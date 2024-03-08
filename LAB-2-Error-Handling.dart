double divide(double a, double b) {
  try {
    if (b == 0) {
      throw DivisionByZeroError();
    }
    return a / b;
  } catch (e) {
    print('Error: Division by zero is not allowed.');
    return double.nan;
  }
}

void main() {
  // Example usage
  double result1 = divide(10, 2); // Result: 5.0
  print('Result 1: $result1');

  double result2 = divide(5, 0); // Result: NaN, Error message printed
  print('Result 2: $result2');
}
