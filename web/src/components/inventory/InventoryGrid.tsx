import React, { useEffect, useMemo, useState } from 'react';
import { Inventory, Slot } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import ShopPanel from './ShopPanel';
import Cart from './Cart';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';
import { Items } from '../../store/items';
import { BoxIcon, SearchIcon } from '../utils/icons/Icons';
import { nf } from '../../utils/format';
import { T } from '../../utils/strings';
import logo from '../../assets/nafst.png';

const PAGE_SIZE = 30;

const SUBTITLES: Record<string, string> = {
  drop: 'Barang di tanah',
  newdrop: 'Barang di tanah',
  stash: 'Penyimpanan',
  container: 'Wadah',
  crafting: 'Crafting',
  glovebox: 'Dashboard',
  trunk: 'Bagasi',
  dumpster: 'Tempat sampah',
  policeevidence: 'Barang bukti',
};

const matchesSearch = (item: Slot, query: string) => {
  if (!query) return true;
  if (!item.name) return false;

  const label = (item.metadata?.label || Items[item.name]?.label || item.name).toLowerCase();
  return label.includes(query) || item.name.toLowerCase().includes(query);
};

const useWeight = (inventory: Inventory) =>
  useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );

// infinite-scroll paging for the (potentially huge) bag / ground grids
const usePaging = (resetKey: unknown) => {
  const [page, setPage] = useState(0);
  const { ref, entry } = useIntersection({ threshold: 0.5 });

  useEffect(() => {
    if (entry && entry.isIntersecting) setPage((prev) => prev + 1);
  }, [entry]);

  useEffect(() => setPage(0), [resetKey]);

  return { page, ref };
};

const SearchBox: React.FC<{ value: string; onChange: (v: string) => void }> = ({ value, onChange }) => (
  <label className="panel-search">
    <SearchIcon />
    <input placeholder={T.search} value={value} onChange={(e) => onChange(e.target.value)} />
  </label>
);

const WeightRow: React.FC<{ inventory: Inventory; weight: number }> = ({ inventory, weight }) => {
  if (!inventory.maxWeight) return null;

  return (
    <div className="panel-weight">
      <span className="panel-weight-label">{T.weight}</span>
      <div className="panel-weight-row">
        <WeightBar percent={(weight / inventory.maxWeight) * 100} />
        <span className="panel-weight-value">
          {nf(weight / 1000, 1)} / {nf(inventory.maxWeight / 1000, 1)} kg
        </span>
      </div>
    </div>
  );
};

// ---------------------------------------------------------------------------------------------
// Player panel: header, weight, hotbar (slots 1-5) and bag (slot 6+)
// ---------------------------------------------------------------------------------------------
const PlayerPanel: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const weight = useWeight(inventory);
  const [search, setSearch] = useState('');
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  const query = search.trim().toLowerCase();
  const hotbar = useMemo(() => inventory.items.filter((item) => item.slot <= 5), [inventory.items]);
  const bag = useMemo(() => inventory.items.filter((item) => item.slot > 5), [inventory.items]);
  const bagItems = useMemo(
    () => (query ? bag.filter((item) => matchesSearch(item, query)) : bag),
    [bag, query]
  );
  const filled = useMemo(() => bag.filter((item) => item.name).length, [bag]);
  const { page, ref } = usePaging(query);

  return (
    <div className="panel inventory-grid-wrapper tilt-left" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
      <div className="panel-header">
        <img className="panel-logo" src={logo} alt="" />
        <div className="panel-title">
          <h2>{inventory.label || 'Inventori'}</h2>
          <p>{T.carried}</p>
        </div>
        <SearchBox value={search} onChange={setSearch} />
      </div>

      <div className="panel-divider" />
      <WeightRow inventory={inventory} weight={weight} />

      <div className="panel-section">
        <div className="section-head">
          <h3>
            {T.hotbar} <i>·</i> {T.hotbarRange}
          </h3>
          <span className="key-chip">Tab</span>
        </div>
        <div className="slot-grid hotbar-grid">
          {hotbar.map((item) => (
            <InventorySlot
              key={`${inventory.type}-${inventory.id}-${item.slot}`}
              item={item}
              inventoryType={inventory.type}
              inventoryGroups={inventory.groups}
              inventoryId={inventory.id}
            />
          ))}
        </div>
      </div>

      <div className="panel-divider" />

      <div className="panel-section">
        <div className="section-head">
          <h3>{T.bag}</h3>
          <span className="key-chip">
            {nf(filled)} {T.items}
          </span>
        </div>
        <div className="slot-grid bag-grid">
          {bagItems.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
            <InventorySlot
              key={`${inventory.type}-${inventory.id}-${item.slot}`}
              item={item}
              ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
              inventoryType={inventory.type}
              inventoryGroups={inventory.groups}
              inventoryId={inventory.id}
            />
          ))}
        </div>
      </div>
    </div>
  );
};

// ---------------------------------------------------------------------------------------------
// Any other right-hand inventory: ground, stash, trunk, glovebox, containers, crafting …
// ---------------------------------------------------------------------------------------------
const StoragePanel: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const weight = useWeight(inventory);
  const [search, setSearch] = useState('');
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  const query = search.trim().toLowerCase();
  const items = useMemo(
    () => (query ? inventory.items.filter((item) => matchesSearch(item, query)) : inventory.items),
    [inventory.items, query]
  );
  const filled = useMemo(() => inventory.items.filter((item) => item.name).length, [inventory.items]);
  const { page, ref } = usePaging(query);

  return (
    <div className="panel inventory-grid-wrapper tilt-right" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
      <div className="panel-header">
        <div className="panel-icon">
          <BoxIcon />
        </div>
        <div className="panel-title">
          <h2>{inventory.label || 'Inventori'}</h2>
          <p>{SUBTITLES[inventory.type] || `${nf(filled)} ${T.items}`}</p>
        </div>
        <SearchBox value={search} onChange={setSearch} />
      </div>

      <div className="panel-divider" />
      <WeightRow inventory={inventory} weight={weight} />

      <div className="panel-section">
        <div className="section-head">
          <h3>{inventory.label || 'Inventori'}</h3>
          <span className="key-chip">
            {nf(filled)} {T.items}
          </span>
        </div>
        <div className="slot-grid bag-grid">
          {items.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
            <InventorySlot
              key={`${inventory.type}-${inventory.id}-${item.slot}`}
              item={item}
              ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
              inventoryType={inventory.type}
              inventoryGroups={inventory.groups}
              inventoryId={inventory.id}
            />
          ))}
        </div>
      </div>
    </div>
  );
};

const InventoryGrid: React.FC<{ inventory: Inventory; side?: 'left' | 'right' }> = ({ inventory, side }) => {
  if (side === 'left') return <PlayerPanel inventory={inventory} />;

  if (inventory.type === 'shop')
    return (
      <div className="shop-column tilt-right">
        <ShopPanel inventory={inventory} />
        <Cart inventory={inventory} />
      </div>
    );

  return <StoragePanel inventory={inventory} />;
};

export default InventoryGrid;
