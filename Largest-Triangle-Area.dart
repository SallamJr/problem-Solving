class Solution {
  double largestTriangleArea(List<List<int>> points) {
    int n = points.length;
  double maxArea = 0.0;

  // Iterate over all possible triplets (i, j, k)
  for (int i = 0; i < n; i++) {
    for (int j = i + 1; j < n; j++) {
      for (int k = j + 1; k < n; k++) {
        // Extract coordinates of the three points
        int x1 = points[i][0], y1 = points[i][1];
        int x2 = points[j][0], y2 = points[j][1];
        int x3 = points[k][0], y3 = points[k][1];

        // Calculate the area using the Shoelace formula
        double area = (x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)).abs() / 2.0;

        // Update maxArea manually instead of using max()
        if (area > maxArea) {
          maxArea = area;
        }
      }
    }
  }

  return maxArea;
  }
}