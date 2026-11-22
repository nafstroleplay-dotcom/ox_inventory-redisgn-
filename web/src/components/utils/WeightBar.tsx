import React, { useMemo } from 'react';

const colorChannelMixer = (colorChannelA: number, colorChannelB: number, amountToMix: number) => {
  let channelA = colorChannelA * amountToMix;
  let channelB = colorChannelB * (1 - amountToMix);
  return channelA + channelB;
};

const colorMixer = (rgbA: number[], rgbB: number[], amountToMix: number) => {
  let r = colorChannelMixer(rgbA[0], rgbB[0], amountToMix);
  let g = colorChannelMixer(rgbA[1], rgbB[1], amountToMix);
  let b = colorChannelMixer(rgbA[2], rgbB[2], amountToMix);
  return `rgb(${r}, ${g}, ${b})`;
};

const COLORS = {
  // Colors used - https://materialui.co/flatuicolors
  primaryColor: [231, 76, 60], // Red (Pomegranate)
  secondColor: [39, 174, 96], // Green (Nephritis)
  accentColor: [211, 84, 0], // Orange (Oragne)
};

// Carry-weight bar: warm amber that slides to red as the bag fills up.
const weightColor = (percent: number) => {
  const p = Math.min(100, Math.max(0, percent));
  const hue = p <= 60 ? 41 : 41 - ((p - 60) / 40) * 41;
  return `linear-gradient(90deg, hsl(${hue + 4} 86% 48%), hsl(${hue} 92% 58%))`;
};

const WeightBar: React.FC<{ percent: number; durability?: boolean }> = ({ percent, durability }) => {
  const background = useMemo(
    () =>
      durability
        ? percent < 50
          ? colorMixer(COLORS.accentColor, COLORS.primaryColor, percent / 100)
          : colorMixer(COLORS.secondColor, COLORS.accentColor, percent / 100)
        : weightColor(percent),
    [durability, percent]
  );

  return (
    <div className={durability ? 'durability-bar' : 'weight-bar'}>
      <div
        className={durability ? 'durability-bar-fill' : 'weight-bar-fill'}
        style={{
          visibility: percent > 0 ? 'visible' : 'hidden',
          height: '100%',
          width: `${Math.min(100, percent)}%`,
          background,
          transition: `background 0.45s ease, width 0.45s cubic-bezier(0.22, 1, 0.36, 1)`,
        }}
      ></div>
    </div>
  );
};
export default WeightBar;
