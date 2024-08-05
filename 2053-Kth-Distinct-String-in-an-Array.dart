class Solution {
  String kthDistinct(List<String> arr, int k) {
    // Step 1: Count the occurrences of each string
  Map<String, int> countMap = {};
  for (var str in arr) {
    if (countMap.containsKey(str)) {
      countMap[str] = countMap[str]! + 1;
    } else {
      countMap[str] = 1;
    }
  }

  // Step 2: Filter the distinct strings
  List<String> distinctStrings = [];
  for (var str in arr) {
    if (countMap[str] == 1) {
      distinctStrings.add(str);
    }
  }

  // Step 3: Return the kth distinct string if available, otherwise return an empty string
  if (k <= distinctStrings.length) {
    return distinctStrings[k - 1];
  } else {
    return "";
  } 
  }
}