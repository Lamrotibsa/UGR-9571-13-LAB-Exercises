import 'dart:async';
import 'dart:math';

// Function simulating a network call to fetch a random quote after a delay
Future<String> fetchRandomQuote() async {
  // Simulate delay using Future.delayed
  await Future.delayed(Duration(seconds: 2));
  
  // List of random quotes
  List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Life is what happens when you're busy making other plans. - John Lennon",
    "In the end, it's not the years in your life that count. It's the life in your years. - Abraham Lincoln",
    "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill"
  ];

  // Generate a random index to pick a quote
  int index = Random().nextInt(quotes.length);

  // Return the random quote
  return quotes[index];
}

void main() async {
  // Asynchronously fetch the random quote
  String quote = await fetchRandomQuote();
  
  // Print the fetched quote
  print("Random Quote: $quote");
}
