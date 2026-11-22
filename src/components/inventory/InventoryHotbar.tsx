import React, { useState } from 'react';
import { getItemUrl, isSlotWithItem } from '../../helpers';
import useNuiEvent from '../../hooks/useNuiEvent';
import { Items } from '../../store/items';
import WeightBar from '../utils/WeightBar';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import { SlotWithItem } from '../../typings';
import SlideUp from '../utils/transitions/SlideUp';
import { formatWeight, nf } from '../../utils/format';

const InventoryHotbar: React.FC = () => {
  const [hotbarVisible, setHotbarVisible] = useState(false);
  const items = useAppSelector(selectLeftInventory).items.slice(0, 5);

  //stupid fix for timeout
  const [handle, setHandle] = useState<ReturnType<typeof setTimeout>>();
  useNuiEvent('toggleHotbar', () => {
    if (hotbarVisible) {
      setHotbarVisible(false);
    } else {
      if (handle) clearTimeout(handle);
      setHotbarVisible(true);
      setHandle(setTimeout(() => setHotbarVisible(false), 3000));
    }
  });

  return (
    <SlideUp in={hotbarVisible}>
      <div className="hotbar-container">
        {items.map((item) => (
          <div
            className={`hotbar-item-slot${isSlotWithItem(item) ? '' : ' empty'}`}
            style={{
              backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : 'none'}`,
            }}
            key={`hotbar-${item.slot}`}
          >
            <div className="inventory-slot-number">{item.slot}</div>
            {isSlotWithItem(item) && (
              <div className="item-slot-wrapper">
                <div className="item-slot-header-wrapper">
                  {item.weight > 0 && <span className="slot-weight">{formatWeight(item.weight)}</span>}
                  {item.count > 1 && <span className="slot-count">x{nf(item.count)}</span>}
                </div>
                <div className="item-slot-footer">
                  {item?.durability !== undefined && <WeightBar percent={item.durability} durability />}
                  <div className="inventory-slot-label-text">
                    {item.metadata?.label ? item.metadata.label : Items[item.name]?.label || item.name}
                  </div>
                </div>
              </div>
            )}
          </div>
        ))}
      </div>
    </SlideUp>
  );
};

export default InventoryHotbar;
