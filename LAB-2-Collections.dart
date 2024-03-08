import 'dart:math';

void main() {
  // Generate a list of random numbers
  List<int> randomNumbers = List.generate(20, (index) => Random().nextInt(10));

  // Print the original list
  print('Original list: $randomNumbers');

  // Create a set to store unique numbers
  Set<int> uniqueNumbers = {};

  // Add each element from the list to the set
  for (int num in randomNumbers) {
    uniqueNumbers.add(num);
  }

  // Print the unique numbers
  print('Unique numbers: $uniqueNumbers');
}
