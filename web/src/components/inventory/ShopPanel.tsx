import React, { useRef } from 'react';
import { Inventory, SlotWithItem } from '../../typings';
import { useAppDispatch, useAppSelector } from '../../store';
import { selectItemAmount } from '../../store/inventory';
import { addToCart, removeFromCart } from '../../store/cart';
import { closeTooltip, openTooltip } from '../../store/tooltip';
import { canPurchaseItem, getItemUrl, isSlotWithItem } from '../../helpers';
import { Items } from '../../store/items';
import { Locale } from '../../store/locale';
import { ShopIcon } from '../utils/icons/Icons';
import { nf } from '../../utils/format';
import { T } from '../../utils/strings';

// Price tag colour: cash-priced items are green, dirty money is red.
export const priceColor = (currency?: string) => (!currency || currency === 'money' ? 'green' : 'red');

const ShopTile: React.FC<{ item: SlotWithItem; inventory: Inventory }> = ({ item, inventory }) => {
  const dispatch = useAppDispatch();
  const amount = useAppSelector(selectItemAmount);
  const inCart = useAppSelector((state) => state.cart.lines.find((line) => line.slot === item.slot)?.qty ?? 0);
  const timerRef = useRef<number | null>(null);

  const stock = item.count !== undefined && item.count !== null ? item.count : undefined;
  const available = canPurchaseItem(item, { type: inventory.type, groups: inventory.groups });
  const isMoney = !item.currency || item.currency === 'money' || item.currency === 'black_money';
  const label = item.metadata?.label || Items[item.name]?.label || item.name;

  const clearTimer = () => {
    if (timerRef.current) {
      clearTimeout(timerRef.current);
      timerRef.current = null;
    }
  };

  return (
    <div
      className={`shop-tile${inCart > 0 ? ' in-cart' : ''}${available ? '' : ' disabled'}`}
      onClick={() => {
        dispatch(closeTooltip());
        clearTimer();
        if (!available) return;
        dispatch(addToCart({ slot: item.slot, qty: amount > 0 ? amount : 1, max: stock }));
      }}
      onContextMenu={(event) => {
        event.preventDefault();
        dispatch(removeFromCart({ slot: item.slot, qty: 1 }));
      }}
      onMouseEnter={() => {
        timerRef.current = window.setTimeout(() => {
          dispatch(openTooltip({ item, inventoryType: inventory.type }));
        }, 500) as unknown as number;
      }}
      onMouseLeave={() => {
        dispatch(closeTooltip());
        clearTimer();
      }}
    >
      {inCart > 0 && <span className="shop-badge">{nf(inCart)}</span>}
      {stock !== undefined && <span className="shop-stock">{stock > 0 ? `x${nf(stock)}` : 'Habis'}</span>}
      <img className="shop-icon" src={getItemUrl(item)} alt="" draggable={false} />
      {item.price !== undefined && item.price > 0 && (
        <span className={`shop-price ${priceColor(item.currency)}`}>
          {isMoney ? (
            <>
              {Locale.$ || '$'}
              {item.price.toLocaleString('en-US')}
            </>
          ) : (
            <>
              <img src={getItemUrl(item.currency as string)} alt="" draggable={false} />
              {item.price.toLocaleString('en-US')}
            </>
          )}
        </span>
      )}
      <span className="shop-name">{label}</span>
    </div>
  );
};

const ShopPanel: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const isBusy = useAppSelector((state) => state.inventory.isBusy);
  const items = inventory.items.filter((item): item is SlotWithItem => isSlotWithItem(item));

  return (
    <div className="panel shop-panel" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
      <div className="panel-header">
        <div className="panel-icon blue">
          <ShopIcon />
        </div>
        <div className="panel-title">
          <h2>{inventory.label || T.shop}</h2>
          <p>{T.shopHint}</p>
        </div>
      </div>

      <div className="panel-divider" />

      <div className="shop-grid">
        {items.map((item) => (
          <ShopTile key={`shop-${inventory.id}-${item.slot}`} item={item} inventory={inventory} />
        ))}
        {items.length === 0 && <div className="shop-tile placeholder" />}
      </div>
    </div>
  );
};

export default ShopPanel;
