class Solution {
  List<String> findWords(List<String> words) {
    /// Step 1 : Define the keynoard rows
  Set<String> row1 = {'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'};
  Set<String> row2 = {'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'};
  Set<String> row3 = {'z', 'x', 'c', 'v', 'b', 'n', 'm'};

  /// Step 2 : Create an empty List to store the returned final result
  List<String> result = [];

  /// Step 3 : Start looping into words characters to find the result

  for(String word in words){
    String lowerWord = word.toLowerCase();

    //// Step (3-1) : Check which row the first letter belongs to
////// Step (3-1-1): Create a Set for current row 
Set<String> currentRow;
 if (row1.contains(lowerWord[0])) {
      currentRow = row1;
    } else if (row2.contains(lowerWord[0])) {
      currentRow = row2;
    } else if (row3.contains(lowerWord[0])) {
      currentRow = row3;
    } else {
      continue; // If the first letter is not in any row, skip
    }

    //// Step (3-2) : Check if all letters in the word belong to the same row
    bool isValid = true;
    for (int i = 0; i < lowerWord.length; i++) {
      if (!currentRow.contains(lowerWord[i])) {
        isValid = false;
        break;
      }
    }

    if (isValid) {
      result.add(word);
    }
  }
   return result;
  }
}