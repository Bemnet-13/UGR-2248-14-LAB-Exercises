// Exercise -2 --Variables and Data types
import 'dart:io';

void main() {
  const speedOfLight = 299792458; // meters per second

  stdout.write('Enter distance in meters: ');
  var input = stdin.readLineSync();
  var distance = double.parse(input!); // Parse input as double
  double time = distance / speedOfLight;
  
  print('Time taken for light to travel $distance meters: ${time.toStringAsFixed(9)} seconds');
}