import React, { useEffect, useMemo } from 'react';
import { Inventory, SlotWithItem } from '../../typings';
import { useAppDispatch, useAppSelector } from '../../store';
import { addToCart, clearCart, removeFromCart, selectCart } from '../../store/cart';
import { getItemUrl, isSlotWithItem } from '../../helpers';
import { Items } from '../../store/items';
import { BankIcon, CartIcon, CashIcon, MinusIcon, PlusIcon } from '../utils/icons/Icons';
import { checkout, refreshBank } from '../../thunks/checkout';
import { formatMoney, nf } from '../../utils/format';
import { T } from '../../utils/strings';

type Line = { item: SlotWithItem; qty: number; unit: number; currency: string };

const Cart: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const dispatch = useAppDispatch();
  const cart = useAppSelector(selectCart);
  const leftItems = useAppSelector((state) => state.inventory.leftInventory.items);

  // a fresh cart for every shop that is opened
  useEffect(() => {
    dispatch(clearCart());
    refreshBank();
  }, [inventory.id, inventory.type, dispatch]);

  const lines = useMemo<Line[]>(
    () =>
      cart.lines.reduce<Line[]>((acc, line) => {
        const item = inventory.items.find((slot) => slot.slot === line.slot);
        if (!item || !isSlotWithItem(item)) return acc;

        const qty = item.count !== undefined && item.count !== null ? Math.min(line.qty, item.count) : line.qty;
        if (qty <= 0) return acc;

        acc.push({ item, qty, unit: item.price || 0, currency: item.currency || 'money' });
        return acc;
      }, []),
    [cart.lines, inventory.items]
  );

  // totals per currency (money plus any item-currency the shop uses)
  const totals = useMemo(() => {
    const result: Record<string, number> = {};
    lines.forEach((line) => (result[line.currency] = (result[line.currency] || 0) + line.unit * line.qty));
    return result;
  }, [lines]);

  const owned = (name: string) =>
    leftItems.reduce((sum, slot) => (slot.name === name ? sum + (slot.count || 0) : sum), 0);

  const cash = owned('money');
  const moneyTotal = totals.money || 0;
  const otherTotals = Object.entries(totals).filter(([currency]) => currency !== 'money');

  // every non-money currency is always paid from items; money is paid from cash or bank
  const otherOk = otherTotals.every(([currency, amount]) => owned(currency) >= amount);
  const canCash = lines.length > 0 && !cart.paying && cash >= moneyTotal && otherOk;
  const canBank = lines.length > 0 && !cart.paying && cart.bank !== null && cart.bank >= moneyTotal && otherOk;
  const totalCount = lines.reduce((sum, line) => sum + line.qty, 0);

  return (
    <div className="panel cart-panel">
      <div className="panel-header">
        <div className="panel-icon blue">
          <CartIcon />
        </div>
        <div className="panel-title">
          <h2>{T.cart}</h2>
          <p>
            {nf(totalCount)} {T.items}
          </p>
        </div>
        <button className="cart-clear" onClick={() => dispatch(clearCart())} disabled={lines.length === 0}>
          {T.clear}
        </button>
      </div>

      <div className="panel-divider" />

      <div className="cart-lines">
        {lines.length === 0 && <div className="cart-empty">{T.cartEmpty}</div>}
        {lines.map(({ item, qty, unit, currency }) => {
          const stock = item.count !== undefined && item.count !== null ? item.count : undefined;
          const isMoney = currency === 'money' || currency === 'black_money';

          return (
            <div className="cart-line" key={`cart-${item.slot}`}>
              <img className="cart-icon" src={getItemUrl(item)} alt="" draggable={false} />
              <div className="cart-info">
                <span className="cart-name">{item.metadata?.label || Items[item.name]?.label || item.name}</span>
                <span className={`cart-unit ${currency === 'black_money' ? 'red' : 'green'}`}>
                  {isMoney ? formatMoney(unit) : `${nf(unit)} ${Items[currency]?.label || currency}`}
                </span>
              </div>
              <div className="cart-stepper">
                <button
                  className="step minus"
                  onClick={() => dispatch(removeFromCart({ slot: item.slot, qty: 1 }))}
                  aria-label="-"
                >
                  <MinusIcon />
                </button>
                <span className="cart-qty">{nf(qty)}</span>
                <button
                  className="step plus"
                  onClick={() => dispatch(addToCart({ slot: item.slot, qty: 1, max: stock }))}
                  aria-label="+"
                >
                  <PlusIcon />
                </button>
              </div>
              <span className="cart-line-total">{isMoney ? formatMoney(unit * qty) : nf(unit * qty)}</span>
            </div>
          );
        })}
      </div>

      <div className="cart-total">
        <span>{T.total}</span>
        <div className="cart-total-values">
          <strong>{formatMoney(moneyTotal)}</strong>
          {otherTotals.map(([currency, amount]) => (
            <small key={currency}>
              + {nf(amount)} {Items[currency]?.label || currency}
            </small>
          ))}
        </div>
      </div>

      <div className="cart-pay">
        <button className="pay-cash" disabled={!canCash} onClick={() => checkout('cash')}>
          <CashIcon />
          <span>{cart.paying ? T.paying : T.payCash}</span>
          <em>{formatMoney(cash)}</em>
        </button>
        {cart.bank !== null && (
          <button className="pay-bank" disabled={!canBank} onClick={() => checkout('bank')}>
            <BankIcon />
            <span>{T.payBank}</span>
            <em>{formatMoney(cart.bank)}</em>
          </button>
        )}
      </div>
    </div>
  );
};

export default Cart;
