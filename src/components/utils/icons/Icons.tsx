import React from 'react';

// Small stroke icons used by the redesigned panels (24x24 grid, inherit currentColor).
const Svg: React.FC<{ children: React.ReactNode; className?: string }> = ({ children, className }) => (
  <svg
    className={className}
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    strokeWidth="2"
    strokeLinecap="round"
    strokeLinejoin="round"
    aria-hidden="true"
  >
    {children}
  </svg>
);

type P = { className?: string };

export const SearchIcon: React.FC<P> = ({ className }) => (
  <Svg className={className}>
    <circle cx="11" cy="11" r="7.5" />
    <path d="m20.5 20.5-4.2-4.2" />
  </Svg>
);

export const HandIcon: React.FC<P> = ({ className }) => (
  <Svg className={className}>
    <path d="M18 11V6a2 2 0 0 0-4 0" />
    <path d="M14 10V4a2 2 0 0 0-4 0v2" />
    <path d="M10 10.5V6a2 2 0 0 0-4 0v8" />
    <path d="M18 8a2 2 0 1 1 4 0v6a8 8 0 0 1-8 8h-2c-2.8 0-4.5-.86-6-2.34l-3.6-3.6a2 2 0 0 1 2.83-2.82L7 15" />
  </Svg>
);

export const InfoIcon: React.FC<P> = ({ className }) => (
  <Svg className={className}>
    <circle cx="12" cy="12" r="9.5" />
    <path d="M12 16v-4.5" />
    <path d="M12 8h.01" />
  </Svg>
);

export const CartIcon: React.FC<P> = ({ className }) => (
  <Svg className={className}>
    <circle cx="9" cy="20" r="1.2" />
    <circle cx="18" cy="20" r="1.2" />
    <path d="M2.5 3h2.4l2.4 11.4a2 2 0 0 0 2 1.6h8.2a2 2 0 0 0 1.95-1.55L21 7H6" />
  </Svg>
);

export const ShopIcon: React.FC<P> = ({ className }) => (
  <Svg className={className}>
    <rect x="4" y="4.5" width="16" height="15" rx="4" />
    <path d="M8.5 12h7" />
  </Svg>
);

export const BoxIcon: React.FC<P> = ({ className }) => (
  <Svg className={className}>
    <path d="M21 8 12 3 3 8v8l9 5 9-5z" />
    <path d="m3 8 9 5 9-5" />
    <path d="M12 13v8" />
  </Svg>
);

export const CashIcon: React.FC<P> = ({ className }) => (
  <Svg className={className}>
    <rect x="2.5" y="6" width="19" height="12" rx="2.5" />
    <circle cx="12" cy="12" r="2.4" />
    <path d="M6 12h.01M18 12h.01" />
  </Svg>
);

export const BankIcon: React.FC<P> = ({ className }) => (
  <Svg className={className}>
    <path d="M3 21h18" />
    <path d="M5 18v-7M9.5 18v-7M14.5 18v-7M19 18v-7" />
    <path d="M12 3 3.5 8.5h17z" />
  </Svg>
);

export const SendIcon: React.FC<P> = ({ className }) => (
  <Svg className={className}>
    <path d="m21.5 2.5-7 19-3.5-8.5L2.5 9.5z" />
    <path d="M21.5 2.5 11 13" />
  </Svg>
);

export const MinusIcon: React.FC<P> = ({ className }) => (
  <Svg className={className}>
    <path d="M5 12h14" />
  </Svg>
);

export const PlusIcon: React.FC<P> = ({ className }) => (
  <Svg className={className}>
    <path d="M5 12h14M12 5v14" />
  </Svg>
);
