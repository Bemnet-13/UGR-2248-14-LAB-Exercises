// Exercise-17--Asynchronous Programming (async/await)

import 'dart:async';

// Simulated function to fetch data from a database
Future<List<String>> fetchDataFromDatabase() async {
  // Simulate a delay of 2 seconds
  await Future.delayed(Duration(seconds: 2));

  // Simulated data
  List<String> data = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  // Return the data
  return data;
}

void main() async {
  print('Loading data from the database...');

  // Call the fetchDataFromDatabase function asynchronously
  List<String> data = await fetchDataFromDatabase();

  // Print the fetched data
  print('Data loaded:');
  for (String item in data) {
    print(item);
  }
}
