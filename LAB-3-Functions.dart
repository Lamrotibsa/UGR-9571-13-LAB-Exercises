String reverseString(String inputString) {
  return inputString.split('').reversed.join('');
}

void main() {
  String originalString = 'Hello, World!';
  String reversedString = reverseString(originalString);
  print('Original String: $originalString');
  print('Reversed String: $reversedString');
}
