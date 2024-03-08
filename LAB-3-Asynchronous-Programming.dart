import 'dart:async';

Future<List<String>> fetchDataFromDatabase() async {
  // Simulate a delay of 2 seconds
  await Future.delayed(Duration(seconds: 2));

  // Simulated data retrieved from the database
  List<String> data = ['Record 1', 'Record 2', 'Record 3'];

  return data;
}

void main() async {
  print('Loading data from the database...');

  // Asynchronously fetch data from the database
  List<String> result = await fetchDataFromDatabase();

  // Display the retrieved data
  print('Data loaded successfully:');
  result.forEach((record) => print(record));
}
