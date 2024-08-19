class Solution {
  int maxProfit(List<int> prices) {
     if (prices.isEmpty) return 0;

  int minPrice = prices[0];
  int maxProfit = 0;

  for (int i = 1; i < prices.length; i++) {
    int currentPrice = prices[i];

    // Update the minimum price encountered so far
    if (currentPrice < minPrice) {
      minPrice = currentPrice;
    }

    // Calculate the potential profit for the current day
    int potentialProfit = currentPrice - minPrice;

    // Update the maximum profit if the current potential profit is greater
    if (potentialProfit > maxProfit) {
      maxProfit = potentialProfit;
    }
  }

  return maxProfit; 
  }
}
/*
Explanation
Initialization:

We initialize minPrice to the first element of the array, assuming the first day is the best day to buy initially.
We initialize maxProfit to 0 because if no profit can be made, the result should be 0.
Iterating Through Prices:

We start iterating from the second day (i = 1).
For each day, we compare the current price with minPrice. If the current price is lower, we update minPrice.
We then calculate the potential profit by subtracting minPrice from the current price.
If this potential profit is greater than maxProfit, we update maxProfit.
Result:

After iterating through all the prices, maxProfit will hold the maximum profit that can be achieved.
Example Walkthrough
For prices = [7, 1, 5, 3, 6, 4]:

The minimum price is updated to 1 on the second day.
The maximum profit is 5, achieved by buying at 1 and selling at 6.
For prices = [7, 6, 4, 3, 1]:

The prices are in a strictly decreasing order, so no profit can be made, and the result is 0.
Time Complexity
O(n): The function only requires a single pass through the array, making it very efficient.
Space Complexity
O(1): The function uses a constant amount of space, regardless of the size of the input array.
This solution effectively finds the maximum profit with a time complexity of O(n), which is optimal for this problem.
*/