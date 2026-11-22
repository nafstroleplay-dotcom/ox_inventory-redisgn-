import { store } from '../store';
import { buyItem } from './buyItem';
import { removeLine, setBank, setPaying } from '../store/cart';
import { Items } from '../store/items';
import { isSlotWithItem } from '../helpers';
import { fetchNui } from '../utils/fetchNui';
import { isEnvBrowser } from '../utils/misc';
import { isEqual } from 'lodash-es';
import { ItemData, Slot, SlotWithItem } from '../typings';

const wait = (ms: number) => new Promise((resolve) => setTimeout(resolve, ms));

// Where a purchased stack should land: an existing stack first, then the bag, then the hotbar.
const findTargetSlot = (item: SlotWithItem, data: ItemData, slots: Slot[]) => {
  if (data.stack) {
    const stack = slots.find((s) => s.name === item.name && isEqual(s.metadata, item.metadata));
    if (stack) return stack;
  }

  return slots.find((s) => s.name === undefined && s.slot > 5) || slots.find((s) => s.name === undefined);
};

export const refreshBank = async () => {
  // plain browser (dev preview) has no NUI backend – keep whatever the mock set
  if (isEnvBrowser()) return;

  try {
    const balance = await fetchNui<number | false>('getBankBalance');
    store.dispatch(setBank(typeof balance === 'number' ? balance : null));
  } catch {
    store.dispatch(setBank(null));
  }
};

// Buys every cart line one after another through the normal ox_inventory buy flow.
// Stops at the first line that fails (no space, can't afford, out of stock…) and keeps the
// remaining lines in the cart so nothing is lost.
export const checkout = async (payment: 'cash' | 'bank') => {
  const initial = store.getState();
  const lines = [...initial.cart.lines];

  if (initial.cart.paying || !lines.length || initial.inventory.rightInventory.type !== 'shop') return;

  store.dispatch(setPaying(true));

  try {
    for (const line of lines) {
      const { leftInventory, rightInventory } = store.getState().inventory;
      const shopSlot = rightInventory.items.find((s) => s.slot === line.slot);

      if (!shopSlot || !isSlotWithItem(shopSlot)) {
        store.dispatch(removeLine(line.slot));
        continue;
      }

      const data = Items[shopSlot.name];
      const target = data && findTargetSlot(shopSlot, data, leftInventory.items);

      if (!target) break;

      try {
        await store
          .dispatch(
            buyItem({
              fromSlot: line.slot,
              fromType: rightInventory.type,
              toSlot: target.slot,
              toType: leftInventory.type,
              count: line.qty,
              payment,
            })
          )
          .unwrap();
      } catch {
        break;
      }

      store.dispatch(removeLine(line.slot));
      // let the refreshSlots message from the client land before computing the next target slot
      await wait(90);
    }
  } finally {
    store.dispatch(setPaying(false));
    refreshBank();
  }
};
