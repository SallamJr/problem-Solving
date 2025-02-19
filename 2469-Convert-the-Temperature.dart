class Solution {
  List<double> convertTemperature(double celsius) {
    /// Step 1 : Create an empty list to store Kelvin and Fahrenheit temperatures
    List<double> convertedTemperatures =[];
    /// Step 2 : Convert celsius temperature to Kelvin temperature.
    double kelvin = celsius + 273.15;
    /// Step 3 : Convert celsius temperature to Fahrenheit temperature.
    double fahrenheit = celsius * 1.80 + 32.00;
    /// Step 4 : Adding Kelvin and Fahrenheit temperature to convertedTemperatures List
    convertedTemperatures.add(kelvin);
    convertedTemperatures.add(fahrenheit);
    /// Step 5 : Return convertedTemperatures List
    return convertedTemperatures;
  }
}