import 'dart:io';

void main() {
  // Define constant variable for the speed of light
  const speedOfLight = 299792458; // meters per second

  // Get user input for distance
  double distance = 0; // in meters
  print("Enter the distance in meters:");
  String userInput = stdin.readLineSync()!;
  distance = double.parse(userInput);

  // Calculate time taken for light to travel the distance
  double time = distance / speedOfLight;

  // Print the result
  print("Time taken for light to travel $distance meters: $time seconds");
}
