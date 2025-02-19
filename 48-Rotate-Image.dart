class Solution {
  void rotate(List<List<int>> matrix) {
    int n = matrix.length;
  
  // Step 1: Transpose the matrix
  for (int i = 0; i < n; i++) {
    for (int j = i; j < n; j++) {
      // Swap elements across diagonal
      int temp = matrix[i][j];
      matrix[i][j] = matrix[j][i];
      matrix[j][i] = temp;
    }
  }
  
  // Step 2: Reverse each row
  for (int i = 0; i < n; i++) {
    int left = 0;
    int right = n - 1;
    while (left < right) {
      // Swap elements in the row
      int temp = matrix[i][left];
      matrix[i][left] = matrix[i][right];
      matrix[i][right] = temp;
      left++;
      right--;
    }
  }
  }
}