class Solution {
  String toHex(int num) {
if (num == 0) return "0";
  const hexDigits = "0123456789abcdef";
  StringBuffer result = StringBuffer();
  int mask = 0xF; // Mask for the last 4 bits (hex digit)

  // For negative numbers, use two's complement for a 32-bit integer
  if (num < 0) {
    num += 0x100000000; // Add 2^32 to the negative number
  }

  while (num != 0) {
    result.write(hexDigits[num & mask]);
    num >>= 4; // Right shift by 4 bits to process the next hex digit
  }

  return result.toString().split('').reversed.join(''); 
  }
}