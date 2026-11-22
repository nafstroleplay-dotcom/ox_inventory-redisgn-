import InventoryComponent from './components/inventory';
import useNuiEvent from './hooks/useNuiEvent';
import { Items } from './store/items';
import { Locale } from './store/locale';
import { setImagePath } from './store/imagepath';
import { setupInventory } from './store/inventory';
import { Inventory } from './typings';
import { useAppDispatch } from './store';
import { debugData } from './utils/debugData';
import DragPreview from './components/utils/DragPreview';
import { fetchNui } from './utils/fetchNui';
import { useDragDropManager } from 'react-dnd';
import KeyPress from './components/utils/KeyPress';
import GivePicker from './components/inventory/GivePicker';

// debugData<T> expects T = the `data` payload type (see DebugEvent<T>),
// so this is a union of *data shapes*, not of full event objects.
type PreviewData =
  | { leftInventory: Inventory; rightInventory: any }
  | number
  | { players: { id: number; label: string }[]; slot: number; count: number };

debugData<PreviewData>([
  {
    action: 'setupInventory',
    data: {
      leftInventory: {
        id: 'test',
        type: 'player',
        slots: 50,
        label: 'Aji Sufi',
        maxWeight: 30000,
        items: [
          { slot: 1, name: 'WEAPON_KNIFE', weight: 300, count: 1, metadata: { durability: 85 } },
          { slot: 2, name: 'WEAPON_PISTOL', weight: 1200, count: 1, metadata: { durability: 60, rarity: 'rare' } },
          { slot: 3, name: 'casino_chip', weight: 0, count: 20, metadata: {} },
          { slot: 4, name: 'money', weight: 0, count: 4748, metadata: {} },
          { slot: 5, name: 'phone', weight: 190, count: 1, metadata: {} },
          { slot: 6, name: 'phone', weight: 190, count: 1, metadata: {} },
          { slot: 7, name: 'casino_member', weight: 10, count: 1, metadata: {} },
          { slot: 8, name: 'phone', weight: 190, count: 1, metadata: {} },
          { slot: 9, name: 'burger', weight: 440, count: 2, metadata: {} },
          { slot: 10, name: 'ammo-9', weight: 5100, count: 728, metadata: { rarity: 'uncommon' } },
          { slot: 11, name: 'casino_vip', weight: 10, count: 1, metadata: { rarity: 'epic' } },
          { slot: 12, name: 'water', weight: 3500, count: 7, metadata: {} },
        ],
      },
      rightInventory: {
        id: 'shop',
        type: 'shop',
        slots: 5,
        label: 'Shop',
        items: [
          { slot: 1, name: 'burger', weight: 220, price: 10, count: 50, metadata: {} },
          { slot: 2, name: 'water', weight: 500, price: 10, metadata: {} },
          { slot: 3, name: 'phone', weight: 190, price: 250, currency: 'money', metadata: {} },
        ],
      },
    },
  },
  { action: 'setBankBalance', data: 98229192 },
  // preview-only mock so the give picker is visible in the browser (click outside to dismiss)
  {
    action: 'setGiveList',
    data: {
      players: [
        { id: 12, label: 'Bob Smith' },
        { id: 47, label: 'Jane Doe' },
        { id: 3, label: 'Mike Ross' },
      ],
      slot: 1,
      count: 1,
    },
  },
]);

const App: React.FC = () => {
  const dispatch = useAppDispatch();
  const manager = useDragDropManager();

  useNuiEvent<{
    locale: { [key: string]: string };
    items: typeof Items;
    leftInventory: Inventory;
    imagepath: string;
  }>('init', ({ locale, items, leftInventory, imagepath }) => {
    for (const name in locale) Locale[name] = locale[name];
    for (const name in items) Items[name] = items[name];

    setImagePath(imagepath);
    dispatch(setupInventory({ leftInventory }));
  });

  fetchNui('uiLoaded', {});

  useNuiEvent('closeInventory', () => {
    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  return (
    <div className="app-wrapper">
      <InventoryComponent />
      <DragPreview />
      <KeyPress />
      <GivePicker />
    </div>
  );
};

addEventListener('dragstart', function (event) {
  event.preventDefault();
});

export default App;