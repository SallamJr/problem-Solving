class Solution {
  double trimMean(List<int> arr) {
   // Calculate the number of elements to remove from each end
  int n = arr.length;
  int removeCount = n ~/ 20;  // 5% of the array
  
  // Sort the array
  List<int> sortedArr = List.from(arr)..sort();
  
  // Remove smallest and largest 5%
  List<int> trimmedArr = sortedArr.sublist(removeCount, n - removeCount);
  
  // Calculate and return the mean of the remaining elements
  return trimmedArr.reduce((a, b) => a + b) / trimmedArr.length; 
  }
}