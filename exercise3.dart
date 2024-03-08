// Exercise -3 --Control Flow (if/else, for, while, switch)
import 'dart:io';

void main() {
  stdout.write('Enter number: ');
  var input = stdin.readLineSync();
  
  if (input != null) {
    int num = int.parse(input);
      if (num % 2 == 0) {
        print('$num is even number');
      } else {
        print('$num is odd number');
      }
    }
   else {
    print('No input provided.');
  }
}