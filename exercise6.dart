import 'dart:io';
// Exercise -6 --Control Flow (if/else, for, while, switch)


// Switch statements in Dart cannot be used to accomodate integer range
// so the program divides the grade and uses a different grading scheme than usual
//  A: 90 - 100
//  B: 80 - 89
//  C: 70 - 79
//  D :60 - 69
//  F <= 59

void main() {
  stdout.write('Enter Grade OUT OF 100: ');
  int grade = int.parse(stdin.readLineSync()!); 

  switch (grade ~/ 10){ //integer division 
    case 10:
    case 9:
      print('You have got A in the course.');
      break;
    case 8:
      print('You have got B in the course.');
      break;
    case 7:
      print('You have got C in the course.');
      break;
    case 6:
      print('You have got D in the course.');
      break;
    default:
      print('You have got F in the course.');
  }
}

