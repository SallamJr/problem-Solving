class Solution {
  String dayOfTheWeek(int day, int month, int year) {
      /// Step 1 : Create a DateTime object with the provided day, month, and year
  DateTime date = DateTime(year, month, day);
  
  /// Step 2 : Define the list of days of the week
  List<String> daysOfWeek = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];

  // Return the corresponding day of the week
  return daysOfWeek[date.weekday % 7]; // weekday returns 1 for Monday to 7 for Sunday
  }
}