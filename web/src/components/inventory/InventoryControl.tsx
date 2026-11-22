import React, { useState } from 'react';
import { useDrop } from 'react-dnd';
import { useAppDispatch, useAppSelector } from '../../store';
import { selectItemAmount, setItemAmount } from '../../store/inventory';
import { DragSource } from '../../typings';
import { onUse } from '../../dnd/onUse';
import { onGive } from '../../dnd/onGive';
import UsefulControls from './UsefulControls';
import { HandIcon, InfoIcon, MinusIcon, PlusIcon, SendIcon } from '../utils/icons/Icons';
import { T } from '../../utils/strings';

const digitsOnly = (s: string) => s.replace(/\D/g, '');

// "Jumlah dipindah" card: how many items a drag / click moves (0 = whole stack),
// plus the use / give drop zones and a shortcut hint.
const InventoryControl: React.FC = () => {
  const itemAmount = useAppSelector(selectItemAmount);
  const dispatch = useAppDispatch();

  const [infoVisible, setInfoVisible] = useState(false);

  const [, use] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      source.inventory === 'player' && onUse(source.item);
    },
  }));

  const [, give] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      source.inventory === 'player' && onGive(source.item);
    },
  }));

  const setAmount = (value: number) => dispatch(setItemAmount(Math.max(0, Math.min(999999, value))));

  return (
    <>
      <UsefulControls infoVisible={infoVisible} setInfoVisible={setInfoVisible} />
      <div className="inventory-control">
        <div className="panel control-card">
          <div className="control-head">
            <span>{T.moveAmount}</span>
            <span className="key-chip">{T.halfHint}</span>
          </div>

          <div className="amount-stepper">
            <button className="amount-step" onClick={() => setAmount(itemAmount - 1)} aria-label="-">
              <MinusIcon />
            </button>
            <input
              className="amount-input"
              type="text"
              inputMode="numeric"
              placeholder={T.all}
              value={itemAmount > 0 ? String(itemAmount) : ''}
              onChange={(event) => setAmount(parseInt(digitsOnly(event.target.value), 10) || 0)}
            />
            <button className="amount-step" onClick={() => setAmount(itemAmount + 1)} aria-label="+">
              <PlusIcon />
            </button>
          </div>

          <button
            className="use-button"
            ref={(el) => {
              use(el);
            }}
          >
            <span className="use-icon">
              <HandIcon />
            </span>
            <strong>{T.use}</strong>
            <small>{T.useHint}</small>
          </button>

          <button
            className="give-button"
            ref={(el) => {
              give(el);
            }}
          >
            <SendIcon />
            <span>{T.give}</span>
          </button>

          <button className="control-hint" onClick={() => setInfoVisible(true)}>
            <InfoIcon />
            <span>{T.controls}</span>
          </button>
        </div>
      </div>
    </>
  );
};

export default InventoryControl;
