class Solution {
  List<int> smallerNumbersThanCurrent(List<int> nums) {
   int n = nums.length;
  List<int> result = List.filled(n, 0);

  for (int i = 0; i < n; i++) {
    int count = 0;
    for (int j = 0; j < n; j++) {
      if (nums[j] < nums[i]) {
        count++;
      }
    }
    result[i] = count;
  }

  return result; 
  }
}