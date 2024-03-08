// Exercise-15--Asynchronous Programming (async/await)

import 'dart:async';
import 'dart:math';

Future<String> fetchQuote() async {
  // Simulate network delay
  await Future.delayed(Duration(seconds: 2));

  // List of random quotes
  List<String> quotes = [
    "The only way to do great work is to love what you do. – Steve Jobs",
    "You miss 100% of the shots you don\'t take. – Wayne Gretzky",
    "I have not failed. I've just found 10,000 ways that won't work. – Thomas A. Edison",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. – Winston Churchill",
    "Believe you can and you're halfway there. – Theodore Roosevelt",
  ];

  // Generate a random index
  int randomIndex = Random().nextInt(quotes.length);

  // Return a random quote
  return quotes[randomIndex];
}

void main() async {
  print('Fetching quote...');
  String quote = await fetchQuote();
  print('Here is your random quote:');
  print(quote);
}

