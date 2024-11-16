class Solution {
  bool isSubsequence(String s, String t) {
   int sPointer = 0; // Pointer for string s
  int tPointer = 0; // Pointer for string t

  // Traverse both strings
  while (sPointer < s.length && tPointer < t.length) {
    if (s[sPointer] == t[tPointer]) {
      sPointer++; // Move sPointer when there's a match
    }
    tPointer++; // Always move tPointer
  }

  // If sPointer has reached the end of s, it means s is a subsequence of t
  return sPointer == s.length; 
  }
}