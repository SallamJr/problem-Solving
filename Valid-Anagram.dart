class Solution {
  bool isAnagram(String s, String t) {

    ///An anagram is a word or phrase formed by rearranging the letters of another word or phrase, using all the original letters exactly once. For example, the word \listen\ can be rearranged to form \silent.
    if (s.length != t.length) return false;
  
  List<String> sortedS = s.split('')..sort();
  List<String> sortedT = t.split('')..sort();

  return sortedS.join() == sortedT.join();
  }
}