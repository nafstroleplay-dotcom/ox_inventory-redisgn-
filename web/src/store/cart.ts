import { createSlice, PayloadAction } from '@reduxjs/toolkit';
import type { RootState } from '.';

export type CartLine = { slot: number; qty: number };

type CartState = {
  lines: CartLine[];
  // null = bank payment is not available (framework does not expose a bank account)
  bank: number | null;
  paying: boolean;
};

const initialState: CartState = {
  lines: [],
  bank: null,
  paying: false,
};

export const cartSlice = createSlice({
  name: 'cart',
  initialState,
  reducers: {
    // adds `qty` of a shop slot; `max` (stock) caps the line
    addToCart(state, action: PayloadAction<{ slot: number; qty: number; max?: number }>) {
      const { slot, qty, max } = action.payload;
      const line = state.lines.find((l) => l.slot === slot);
      const cap = max !== undefined ? max : Infinity;

      if (line) line.qty = Math.min(cap, line.qty + qty);
      else if (cap > 0) state.lines.push({ slot, qty: Math.min(cap, qty) });
    },
    // removes `qty` and drops the line once it hits zero
    removeFromCart(state, action: PayloadAction<{ slot: number; qty: number }>) {
      const line = state.lines.find((l) => l.slot === action.payload.slot);
      if (!line) return;

      line.qty -= action.payload.qty;
      if (line.qty <= 0) state.lines = state.lines.filter((l) => l.slot !== action.payload.slot);
    },
    removeLine(state, action: PayloadAction<number>) {
      state.lines = state.lines.filter((l) => l.slot !== action.payload);
    },
    clearCart(state) {
      state.lines = [];
    },
    setBank(state, action: PayloadAction<number | null>) {
      state.bank = action.payload;
    },
    setPaying(state, action: PayloadAction<boolean>) {
      state.paying = action.payload;
    },
  },
});

export const { addToCart, removeFromCart, removeLine, clearCart, setBank, setPaying } = cartSlice.actions;
export const selectCart = (state: RootState) => state.cart;

export default cartSlice.reducer;
