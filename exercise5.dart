// Exercise -4 --Control Flow (if/else, for, while, switch)
import 'dart:io';

void main() {
  stdout.write('Enter the first number: ');
  var num1 = double.parse(stdin.readLineSync()!); // Convert input to double
  stdout.write('Enter the second number: ');
  var num2 = double.parse(stdin.readLineSync()!); // Convert input to double
  stdout.write('Enter the operator (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  double result = 0;
  switch (operator) {
    case '+':
      result = num1 + num2;
      print('The result is $result');
      break; // Don't forget to break after each case
    case '-':
      result = num1 - num2;
      print('The result is $result');
      break;
    case '*':
      result = num1 * num2;
      print('The result is $result');
      break;
    case '/':
      if (num2 != 0) {
        // Check for division by zero
        result = num1 / num2;
        print('The result is $result');
      } else {
        print('Cannot divide by zero!');
      }
      break;
    default:
      print('Invalid operator!');
  }
}
