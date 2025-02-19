class Solution {
  double minimumAverage(List<int> nums) {
    /// step 0 : Check nums List elements are equal to even number 
    /// step 1 : Create empty List to contain averages numbers
    /// step 2 : Having nums List and the empty averages List 
    /// step 3 : Taking the max & mini elemnts in nums List and calculate the average and add it to averages List
    /// step 4 : Repeaet that process until nums List became empty 
    /// step 5 : Take the minimum element in averages List and return the output

    // Create a new list to store averages
    List<double> averages = [];
    // Create a copy of nums to modify
  List<int> workingNums = List.from(nums);
    // Repeat n/2 times
  for (int i = 0; i < nums.length ~/ 2; i++) {
    // Find min and max
    int minElement = workingNums.reduce((a, b) => a < b ? a : b);
    int maxElement = workingNums.reduce((a, b) => a > b ? a : b);
      // Remove min and max
    workingNums.remove(minElement);
    workingNums.remove(maxElement);
    
    // Calculate average and add to averages list
    double average = (minElement + maxElement) / 2;
    averages.add(average);
  }
  // Return minimum value from averages
  return averages.reduce((a, b) => a < b ? a : b);
}
}