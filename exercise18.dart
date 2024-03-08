// Exercise-18--Asynchronous Programming (async/await)

import 'dart:convert';
import 'package:http/http.dart' as http;

// Function to fetch weather data from the API
Future<Map<String, dynamic>> fetchWeatherData(String city) async {
  // API endpoint URL (replace with your actual API endpoint)
  String apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=YOUR_API_KEY';

  // Make an HTTP GET request to the API
  var response = await http.get(Uri.parse(apiUrl));

  // Check if the request was successful (status code 200)
  if (response.statusCode == 200) {
    // Parse the JSON response
    Map<String, dynamic> data = json.decode(response.body);
    return data;
  } else {
    // If the request was not successful, throw an exception
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  String city = 'New York'; // Specify the city for which you want to fetch weather data

  try {
    print('Fetching weather data for $city...');
    // Fetch weather data asynchronously
    Map<String, dynamic> weatherData = await fetchWeatherData(city);

    // Extract temperature and weather conditions from the data
    double temperature = weatherData['main']['temp'];
    String weatherDescription = weatherData['weather'][0]['description'];

    // Print the fetched weather information
    print('Current temperature in $city: ${temperature.toStringAsFixed(1)}°C');
    print('Weather conditions: $weatherDescription');
  } catch (e) {
    // Handle any errors that occur during the fetching process
    print('Error fetching weather data: $e');
  }
}
