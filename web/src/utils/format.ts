import { Locale } from '../store/locale';

// Indonesian number formatting for counts / weights ("4.748", "11,1")
export const nf = (value: number, decimals = 0) =>
  value.toLocaleString('id-ID', { minimumFractionDigits: decimals, maximumFractionDigits: decimals });

// slot weight: 300g / 1,2kg
export const formatWeight = (grams: number) => (grams >= 1000 ? `${nf(grams / 1000, 1)}kg` : `${nf(grams)}g`);

// money is shown the way the shop does it: $4,748
export const formatMoney = (value: number) => `${Locale.$ || '$'}${Math.max(0, value).toLocaleString('en-US')}`;
