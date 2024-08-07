class Solution {
      // Arrays to store words for units, teens, and tens
  static const List<String> belowTwenty = [
    "Zero", "One", "Two", "Three", "Four", "Five",
    "Six", "Seven", "Eight", "Nine", "Ten", "Eleven",
    "Twelve", "Thirteen", "Fourteen", "Fifteen",
    "Sixteen", "Seventeen", "Eighteen", "Nineteen"
  ];

  static const List<String> tens = [
    "", "", "Twenty", "Thirty", "Forty",
    "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"
  ];

  static const List<String> thousands = [
    "", "Thousand", "Million", "Billion"
  ];

  // Helper function to convert numbers less than 1000 to words
    String convertLessThan1000(int num) {
    if (num == 0) {
      return "";
    } else if (num < 20) {
      return belowTwenty[num] + " ";
    } else if (num < 100) {
      return tens[num ~/ 10] + " " + convertLessThan1000(num % 10);
    } else {
      return belowTwenty[num ~/ 100] + " Hundred " + convertLessThan1000(num % 100);
    }
  }

  // Main function to convert a non-negative integer to its English words representation
  String numberToWords(int num) {
      if (num == 0) {
      return "Zero";
    }

    String result = "";
    int thousandCounter = 0;

    while (num > 0) {
      if (num % 1000 != 0) {
        result = convertLessThan1000(num % 1000) + thousands[thousandCounter] + " " + result;
      }
      num ~/= 1000;
      thousandCounter++;
    }

    return result.trim();
    
  }
}