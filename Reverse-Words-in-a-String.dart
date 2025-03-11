class Solution {
  String reverseWords(String s) {
    return s.split(' ')  // Split into words
          .where((word) => word.isNotEmpty)  // Remove extra spaces
          .toList()
          .reversed
          .join(' '); 
  }
}