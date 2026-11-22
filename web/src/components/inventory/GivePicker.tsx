import React, { useState } from 'react';
import useNuiEvent from '../../hooks/useNuiEvent';
import { fetchNui } from '../../utils/fetchNui';
import { Locale } from '../../store/locale';

interface GivePlayer {
  id: number;
  label?: string;
}

interface GiveData {
  players: GivePlayer[];
  slot: number;
  count: number;
}

// Themed picker for choosing which nearby player to give an item to.
// Lua sends 'setGiveList'; the chosen recipient goes back via 'selectGiveTarget'.
const GivePicker: React.FC = () => {
  const [data, setData] = useState<GiveData | null>(null);

  useNuiEvent<GiveData>('setGiveList', setData);

  if (!data || !data.players?.length) return null;

  const close = () => setData(null);

  const choose = (id: number) => {
    fetchNui('selectGiveTarget', { id, slot: data.slot, count: data.count });
    close();
  };

  const cancel = () => {
    fetchNui('selectGiveTarget', {});
    close();
  };

  return (
    <div className="give-picker-overlay" onMouseDown={cancel}>
      <div className="give-picker" onMouseDown={(e) => e.stopPropagation()}>
        <div className="give-picker-title">{Locale.ui_give || 'Give'}</div>
        <div className="give-picker-list">
          {data.players.map((p) => (
            <button key={p.id} className="give-picker-player" onClick={() => choose(p.id)}>
              <span className="give-picker-id">{p.id}</span>
              <span className="give-picker-name">{p.label || `Player ${p.id}`}</span>
            </button>
          ))}
        </div>
        <button className="give-picker-cancel" onClick={cancel}>
          {Locale.ui_cancel || 'Cancel'}
        </button>
      </div>
    </div>
  );
};

export default GivePicker;
