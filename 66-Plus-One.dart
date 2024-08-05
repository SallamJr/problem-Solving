class Solution {
  List<int> plusOne(List<int> digits) {
    for (int i = digits.length - 1; i >= 0; i--) {
    if (digits[i] < 9) {
      // If the current digit is less than 9, just increment it and return the result
      digits[i] += 1;
      return digits;
    }
    // If the current digit is 9, set it to 0 and continue to the next digit
    digits[i] = 0;
  }
  // If all digits were 9, we need to add a new digit at the beginning
  digits.insert(0, 1);
  return digits; 
  }
}