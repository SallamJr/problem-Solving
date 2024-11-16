class Solution {
  bool canConstruct(String ransomNote, String magazine) {
   // Create a frequency map for the letters in the magazine
  Map<String, int> magazineCount = {};

  for (var char in magazine.split('')) {
    magazineCount[char] = (magazineCount[char] ?? 0) + 1;
  }

  // Check if all letters in the ransomNote are available in the magazine
  for (var char in ransomNote.split('')) {
    if ((magazineCount[char] ?? 0) == 0) {
      return false; // Letter is not available or used up
    }
    magazineCount[char] = (magazineCount[char]! - 1); ; // Use the letter
  }

  return true; // All letters in the ransomNote are accounted for  
  }
}