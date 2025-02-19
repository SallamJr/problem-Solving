class Solution {
  int minimumOperations(List<int> nums) {

    /// Step 1 : create an integer to store the number of created operations
     int totalOperations = 0;
  
  for (int num in nums) {
    // Get remainder when divided by 3
    int remainder = num % 3;
    
    // If remainder is 0, no operations needed
    if (remainder == 0) continue;
    
    // Calculate steps manually without using min
    int stepsToNext = 3 - remainder;
    int stepsToPrevious = remainder;
    
    // Add the smaller value to total operations
    totalOperations += (stepsToNext < stepsToPrevious) ? stepsToNext : stepsToPrevious;
  }
  
  return totalOperations;
  }
}