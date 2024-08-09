class Solution {
  int numMagicSquaresInside(List<List<int>> grid) {
   int count = 0;
  int rows = grid.length;
  int cols = grid[0].length;

  // Iterate over each possible 3x3 subgrid
  for (int i = 0; i <= rows - 3; i++) {
    for (int j = 0; j <= cols - 3; j++) {
      // Check if the current 3x3 grid forms a magic square
      if (isValidMagicSquare(grid, i, j)) {
        count++;
      }
    }
  }

  return count;
}

bool isValidMagicSquare(List<List<int>> grid, int row, int col) {
  // Numbers in a magic square must be distinct and between 1 and 9
  Set<int> nums = {};

  for (int i = row; i < row + 3; i++) {
    for (int j = col; j < col + 3; j++) {
      int num = grid[i][j];
      if (num < 1 || num > 9 || !nums.add(num)) {
        return false;
      }
    }
  }

  // Calculate the sum of the first row for comparison
  int sum = grid[row][col] + grid[row][col + 1] + grid[row][col + 2];

  // Check rows
  for (int i = 0; i < 3; i++) {
    if (grid[row + i][col] + grid[row + i][col + 1] + grid[row + i][col + 2] != sum) {
      return false;
    }
  }

  // Check columns
  for (int i = 0; i < 3; i++) {
    if (grid[row][col + i] + grid[row + 1][col + i] + grid[row + 2][col + i] != sum) {
      return false;
    }
  }

  // Check diagonals
  if (grid[row][col] + grid[row + 1][col + 1] + grid[row + 2][col + 2] != sum ||
      grid[row][col + 2] + grid[row + 1][col + 1] + grid[row + 2][col] != sum) {
    return false;
  }

  return true;   
  }
}