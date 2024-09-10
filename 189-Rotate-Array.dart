class Solution {
void rotate(List<int> nums, int k) {
  // Handle the case where the list is empty or no rotation is needed
  if (nums.isEmpty || k == 0) return;

  // Normalize k to avoid unnecessary full rotations
  k = k % nums.length;

  // If k is 0 after the modulo, no rotation is needed
  if (k == 0) return;

  // Perform the rotation in place
  // 1. Reverse the whole list
  reverse(nums, 0, nums.length - 1);

  // 2. Reverse the first k elements
  reverse(nums, 0, k - 1);

  // 3. Reverse the rest of the elements
  reverse(nums, k, nums.length - 1);
}

// Helper function to reverse a portion of the list
void reverse(List<int> nums, int start, int end) {
  while (start < end) {
    int temp = nums[start];
    nums[start] = nums[end];
    nums[end] = temp;
    start++;
    end--;
  }
}
}