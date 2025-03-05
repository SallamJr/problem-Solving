class Solution {
  bool detectCapitalUse(String word) {
    // Case 1: All letters are uppercase
  if (word == word.toUpperCase()) {
    return true;
  }
  // Case 2: All letters are lowercase
  if (word == word.toLowerCase()) {
    return true;
  }
  // Case 3: Only the first letter is uppercase
  if (word[0] == word[0].toUpperCase() && word.substring(1) == word.substring(1).toLowerCase()) {
    return true;
  }
  // If none of the cases match, return false
  return false;

  }
}