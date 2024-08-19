class Solution {
  int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int i = 0;

  for (int j = 1; j < nums.length; j++) {
    if (nums[j] != nums[i]) {
      i++;
      nums[i] = nums[j];
    }
  }

  return i + 1;    
  }
}
/*
Explanation
Initialization:

We start with i = 0, pointing to the first element in the array.
j starts from 1, the next element.
Two-Pointer Technique:

For each j from 1 to the end of the array:
If nums[j] is different from nums[i], it means nums[j] is a unique element.
Increment i and copy nums[j] to nums[i].
Result:

After the loop, i will be the index of the last unique element.
The number of unique elements is i + 1, because i is 0-based.
Example
For nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]:

The first unique element is 0, and it's already at nums[0].
The next unique element is 1, and it's moved to nums[1].
The next unique element is 2, and it's moved to nums[2].
Continue this process until all unique elements are placed at the beginning of the array.
The result will be k = 5, and the modified array will be [0, 1, 2, 3, 4].

Time Complexity
O(n): The function makes a single pass through the array, where n is the number of elements in the array.
Space Complexity
O(1): The function modifies the array in place, so it uses only a constant amount of extra space.
This approach is efficient and meets the problem's requirements for in-place modification and maintaining the original order of unique elements.
*/