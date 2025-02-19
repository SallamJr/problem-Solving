class Solution {
  bool isPowerOfThree(int n) {
      // Handle base cases
  if (n <= 0) return false;
  if (n == 1) return true;
  
  // Keep dividing by 3 as long as possible
  while (n > 1) {
    // If not divisible by 3, it can't be a power of 3
    if (n % 3 != 0) return false;
    n = n ~/ 3;  // Integer division by 3
  }
  
  return true;
  }
}