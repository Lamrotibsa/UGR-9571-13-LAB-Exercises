import 'dart:io';

void main() {
  // Prompt the user to enter a number
  print('Enter a number:');
  String? input = stdin.readLineSync();
  
  // Convert the input to an integer
  int number = int.tryParse(input!) ?? 0;
  
  // Check if the number is even or odd
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}
