class Solution {
  bool isPalindrome(String s) {
    // Step 1: Filter the string to include only alphanumeric characters and convert to lowercase.
  String filteredString = s
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]'), ''); // Remove non-alphanumeric characters.

  // Step 2: Check if the filtered string reads the same forward and backward.
  String reversedString = filteredString.split('').reversed.join('');
  
  return filteredString == reversedString; 
  }
}