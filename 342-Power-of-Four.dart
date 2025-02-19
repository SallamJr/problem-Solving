class Solution {
  bool isPowerOfFour(int n) {
      // Handle base cases
  if (n <= 0) return false;
  if (n == 1) return true;
  
  // Keep dividing by 3 as long as possible
  while (n > 1) {
    // If not divisible by 4, it can't be a power of 4
    if (n % 4 != 0) return false;
    n = n ~/ 4;  // Integer division by 4
  }
  
  return true;
  }
}