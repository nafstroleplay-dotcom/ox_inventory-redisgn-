import React, { useEffect, useState } from 'react';

// Each player picks their own accent colour. We store a single hue (0-360) in
// localStorage (per client) and drive the theme via CSS variables, with fixed
// saturation/lightness so every hue stays readable.
const STORAGE_KEY = 'ox_inv_accent_hue';
const S = 92;
const L = 60;
const DEFAULT_HUE = 348; // rose red

const PRESETS = [
  { name: 'Rose', hue: 348 },
  { name: 'Purple', hue: 271 },
  { name: 'Blue', hue: 220 },
  { name: 'Cyan', hue: 190 },
  { name: 'Green', hue: 142 },
  { name: 'Lime', hue: 90 },
  { name: 'Yellow', hue: 48 },
  { name: 'Orange', hue: 25 },
  { name: 'Red', hue: 0 },
  { name: 'Pink', hue: 325 },
];

export const applyAccent = (hue: number) => {
  const s = document.documentElement.style;
  s.setProperty('--accent', `hsl(${hue} ${S}% ${L}%)`);
  s.setProperty('--accent-soft', `hsl(${hue} ${S}% ${L}% / 0.2)`);
  s.setProperty('--accent-glow', `hsl(${hue} ${S}% ${L}% / 0.45)`);
  s.setProperty('--accent-border', `hsl(${hue} ${S}% ${L}% / 0.3)`);
};

const readSavedHue = (): number => {
  const saved = Number(localStorage.getItem(STORAGE_KEY));
  return Number.isFinite(saved) && saved >= 0 && saved <= 360 ? saved : DEFAULT_HUE;
};

// apply immediately on load so there's no flash of the default colour
applyAccent(readSavedHue());

const AccentPicker: React.FC = () => {
  const [open, setOpen] = useState(false);
  const [hue, setHue] = useState<number>(readSavedHue);

  useEffect(() => {
    applyAccent(hue);
    localStorage.setItem(STORAGE_KEY, String(hue));
  }, [hue]);

  return (
    <div className="accent-picker">
      {open && (
        <div className="accent-picker-panel">
          <div className="accent-picker-title">THEME COLOUR</div>
          <div className="accent-picker-swatches">
            {PRESETS.map((p) => (
              <button
                key={p.hue}
                className={`accent-swatch${hue === p.hue ? ' active' : ''}`}
                style={{ background: `hsl(${p.hue} ${S}% ${L}%)` }}
                title={p.name}
                onClick={() => setHue(p.hue)}
              />
            ))}
          </div>
          <input
            className="accent-hue-slider"
            type="range"
            min={0}
            max={360}
            value={hue}
            onChange={(e) => setHue(Number(e.target.value))}
          />
        </div>
      )}
      <button className="accent-picker-toggle" title="Theme colour" onClick={() => setOpen((o) => !o)}>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
          <path d="M512 256c0 .9 0 1.8 0 2.7c-.4 36.5-33.6 61.3-70.1 61.3H344c-26.5 0-48 21.5-48 48c0 3.4 .4 6.7 1 9.9c2.1 10.2 6.5 20 10.8 29.9c6.1 13.8 12.1 27.5 12.1 42c0 31.8-21.6 60.7-53.4 62c-3.5 .1-7 .2-10.6 .2C114.6 512 0 397.4 0 256S114.6 0 256 0S512 114.6 512 256zM128 288a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm0-96a32 32 0 1 0 0-64 32 32 0 1 0 0 64zM288 96a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm96 96a32 32 0 1 0 0-64 32 32 0 1 0 0 64z" />
        </svg>
      </button>
    </div>
  );
};

export default AccentPicker;
