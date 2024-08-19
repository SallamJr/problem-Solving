class Solution {
  int minSteps(int n) {
     int operations = 0;
  int factor = 2;

  while (n > 1) {
    while (n % factor == 0) {
      operations += factor;
      n ~/= factor;
    }
    factor++;
  }

  return operations; 
  }
}