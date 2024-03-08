// Exercise 14--- Classes and Objects

import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  int _radius;

  Circle(this._radius);

  @override
  double calculateArea() {
    return pi * _radius * _radius;
  }
}

class Square extends Shape {
  int _side;

  Square(this._side);

  @override
  double calculateArea() {
    return _side * _side.toDouble(); // Cast to double for consistent return type
  }
}

void main() {
  Circle circle = Circle(5);
  print('Area of circle: ${circle.calculateArea()}');

  Square square = Square(4);
  print('Area of square: ${square.calculateArea()}');
}
