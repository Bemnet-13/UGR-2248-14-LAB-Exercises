// Exercise-23 ---Collections (Lists, Sets, Maps)

import 'dart:math';

void main() {
  // Generate a list of random numbers
  List<int> randomNumbers = List.generate(20, (_) => Random().nextInt(20));

  // Print the original list
  print('Original List: $randomNumbers');

  // Create a Set to store unique numbers
  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);

  // Print the unique numbers
  print('Unique Numbers: $uniqueNumbers');
}
