import 'dart:io';

// Function to calculate the sum of two numbers
int calculateSum(int a, int b) {
  return a + b;
}

void main() {
  // Taking user input for two numbers
  print("Enter the first number:");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  int num2 = int.parse(stdin.readLineSync()!);

  // Calling the function and printing the result
  int sum = calculateSum(num1, num2);
  print("The sum of $num1 and $num2 is: $sum");
}
