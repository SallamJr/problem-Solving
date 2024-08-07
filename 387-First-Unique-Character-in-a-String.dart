class Solution {
  int firstUniqChar(String s) {
    // Step 1: Create a frequency map
  Map<String, int> frequencyMap = {};

  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    if (frequencyMap.containsKey(char)) {
      frequencyMap[char] = frequencyMap[char]! + 1;
    } else {
      frequencyMap[char] = 1;
    }
  }

  // Step 2: Find the first non-repeating character
  for (int i = 0; i < s.length; i++) {
    if (frequencyMap[s[i]] == 1) {
      return i;
    }
  }

  // If no non-repeating character is found, return -1
  return -1; 
  }
}