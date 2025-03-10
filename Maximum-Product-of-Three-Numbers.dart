class Solution {
  int maximumProduct(List<int> nums) {
    // Sort the array
  nums.sort();

  int n = nums.length;
  
  // Maximum product can be either:
  // 1. Product of the last three elements (largest three numbers)
  // 2. Product of the first two elements (smallest two numbers) and the last element (largest number)
  return nums[n - 1] * nums[n - 2] * nums[n - 3] 
         > nums[0] * nums[1] * nums[n - 1] 
         ? nums[n - 1] * nums[n - 2] * nums[n - 3]
         : nums[0] * nums[1] * nums[n - 1];
  }
}