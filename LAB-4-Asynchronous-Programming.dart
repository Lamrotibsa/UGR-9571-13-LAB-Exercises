import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherData() async {
  // Replace 'YOUR_API_KEY' with your actual API key from OpenWeatherMap
  final apiKey = 'YOUR_API_KEY';
  final apiUrl =
      'http://api.openweathermap.org/data/2.5/weather?q=London&appid=$apiKey&units=metric';

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON
    return json.decode(response.body);
  } else {
    // If the server did not return a 200 OK response, throw an exception
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  try {
    // Fetch weather data asynchronously
    final weatherData = await fetchWeatherData();

    // Extract relevant information from the response
    final cityName = weatherData['name'];
    final temperature = weatherData['main']['temp'];
    final weatherDescription = weatherData['weather'][0]['description'];

    // Display the current weather information
    print('Weather in $cityName:');
    print('Temperature: $temperature°C');
    print('Description: $weatherDescription');
  } catch (e) {
    print('Error fetching weather data: $e');
  }
}
