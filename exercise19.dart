// Exercise-19---Error Handling (try/catch)

import 'dart:io';

void main() {
  stdout.write('Enter a number: ');

  try {
    // Read user input from the console
    String userInput = stdin.readLineSync()!;

    // Convert the user input to an integer
    int number = int.parse(userInput);

    // Print the converted integer
    print('Integer value: $number');
  } catch (e) {
    // Handle the FormatException if the input is not a valid number
    print('Error: Invalid input. Please enter a valid number.');
  }
}
