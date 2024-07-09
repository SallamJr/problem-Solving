class Solution {
  double averageWaitingTime(List<List<int>> customers) {
  int currentTime = 0;
  int totalWaitingTime = 0;

  for (var customer in customers) {
    int arrivalTime = customer[0];
    int prepTime = customer[1];

    // The chef waits for the customer to arrive if he is idle
    currentTime = currentTime > arrivalTime ? currentTime : arrivalTime;

    // The time at which the order is finished
    currentTime += prepTime;

    // Waiting time for this customer
    totalWaitingTime += currentTime - arrivalTime;
  }

  // Calculate the average waiting time
  return totalWaitingTime / customers.length;    
  }
}