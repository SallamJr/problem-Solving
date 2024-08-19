class Solution {
  bool isIsomorphic(String s, String t) {
     if (s.length != t.length) return false;

  Map<String, String> mapST = {};
  Map<String, String> mapTS = {};

  for (int i = 0; i < s.length; i++) {
    String charS = s[i];
    String charT = t[i];

    // Check mapping from s to t
    if (mapST.containsKey(charS)) {
      if (mapST[charS] != charT) {
        return false;
      }
    } else {
      mapST[charS] = charT;
    }

    // Check mapping from t to s
    if (mapTS.containsKey(charT)) {
      if (mapTS[charT] != charS) {
        return false;
      }
    } else {
      mapTS[charT] = charS;
    }
  }

  return true; 
  }
}
/*
To determine if two strings s and t are isomorphic, we need to ensure that there is a one-to-one mapping between characters in s and characters in t. This means that:

Each character in s should map to exactly one character in t.
Each character in t should map back to exactly one character in s.
Approach
Mapping Check:

We'll use two maps (or dictionaries) to keep track of the character mappings from s to t and from t to s.
Iterate Through the Strings:

For each character pair (s[i], t[i]), check if s[i] has been mapped to a different character in t and vice versa.
If a conflict is found (e.g., s[i] is mapped to a different character than t[i]), the strings are not isomorphic.
Return Result:

If no conflicts are found during the iteration, the strings are isomorphic.
Explanation
Length Check:

First, we check if the strings s and t have the same length. If not, they cannot be isomorphic, and we return false.
Two Maps for Bidirectional Mapping:

mapST maps characters from s to t.
mapTS maps characters from t to s.
These two maps ensure that each character in s maps to exactly one character in t and vice versa.
Character Mapping:

We iterate through each character in the strings.
For each character pair (s[i], t[i]), we check the mappings:
If s[i] has already been mapped to a character different from t[i], or t[i] has been mapped to a character different from s[i], the strings are not isomorphic, and we return false.
If s[i] and t[i] are new, we establish the mapping in both mapST and mapTS.
Final Result:

If we can iterate through all characters without finding any conflicts, the strings are isomorphic, and we return true.
Example Walkthrough
For s = \egg\ and t = \add\:
e -> a, g -> d (no conflicts, return true).
For s = \foo\ and t = \bar\:
f -> b, o -> a (conflict: o cannot map to both a and r, return false).
Time Complexity
O(n): The function iterates through the strings once, where n is the length of the strings.
Space Complexity
O(1): The space complexity is constant since we only use a fixed amount of extra space for the mappings.
This approach efficiently checks if two strings are isomorphic by ensuring a one-to-one character mapping between the strings.
*/