import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main() async {
  // Replace 'YOUR_API_KEY' with your actual API key
  const String apiKey = 'YOUR_API_KEY';
  const String city = 'New York'; // Replace with the desired city
  
  // Construct the API URL
  final String apiUrl =
      'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';

  try {
    // Make an HTTP GET request to the weather API
    final response = await http.get(Uri.parse(apiUrl));

    // Check if the request was successful (status code 200)
    if (response.statusCode == 200) {
      // Parse the JSON response
      final Map<String, dynamic> data = jsonDecode(response.body);

      // Extract temperature and weather description from the response
      final double temperature = data['main']['temp'];
      final String weatherDescription = data['weather'][0]['description'];

      // Display the current temperature and weather conditions
      print('Current temperature in $city: $temperature°C');
      print('Weather conditions: $weatherDescription');
    } else {
      // Print an error message if the request fails
      print('Failed to fetch weather data: ${response.statusCode}');
    }
  } catch (e) {
    // Print an error message if an exception occurs
    print('Error: $e');
  }
}