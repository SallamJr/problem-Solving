class Solution {
  String addStrings(String num1, String num2) {
      // Result will be built in reverse
  StringBuffer result = StringBuffer();
  
  // Get lengths and initialize pointers
  int i = num1.length - 1;
  int j = num2.length - 1;
  int carry = 0;
  
  // Process digits from right to left
  while (i >= 0 || j >= 0 || carry > 0) {
    // Get digits or use 0 if exhausted
    int digit1 = i >= 0 ? num1.codeUnitAt(i) - '0'.codeUnitAt(0) : 0;
    int digit2 = j >= 0 ? num2.codeUnitAt(j) - '0'.codeUnitAt(0) : 0;
    
    // Calculate sum of digits and carry
    int sum = digit1 + digit2 + carry;
    carry = sum ~/ 10;  // Integer division for new carry
    
    // Add current digit to result
    result.write(sum % 10);
    
    // Move pointers
    i--;
    j--;
  }
  
  // Reverse the string and return
  return result.toString().split('').reversed.join();
  }
}