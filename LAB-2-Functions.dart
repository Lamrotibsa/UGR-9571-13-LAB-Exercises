import 'dart:math';

// Function to check if a number is prime
bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

// Function to find prime numbers within a range
List<int> findPrimesInRange(int start, int end) {
  List<int> primes = [];
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }
  return primes;
}

void main() {
  int start = 1;
  int end = 100;

  List<int> primeNumbers = findPrimesInRange(start, end);
  print('Prime numbers between $start and $end: ${primeNumbers}');
}
