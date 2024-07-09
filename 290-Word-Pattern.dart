class Solution {
  bool wordPattern(String pattern, String s) {
  List<String> words = s.split(' ');

  // Check if lengths match
  if (pattern.length != words.length) {
    return false;
  }

  // Maps to store character to word and word to character mappings
  Map<String, String> charToWord = {};
  Map<String, String> wordToChar = {};

  for (int i = 0; i < pattern.length; i++) {
    String char = pattern[i];
    String word = words[i];

    // Check if char is already mapped to a different word
    if (charToWord.containsKey(char)) {
      if (charToWord[char] != word) {
        return false;
      }
    } else {
      charToWord[char] = word;
    }

    // Check if word is already mapped to a different char
    if (wordToChar.containsKey(word)) {
      if (wordToChar[word] != char) {
        return false;
      }
    } else {
      wordToChar[word] = char;
    }
  }

  return true;    
  }
}