// Exercise 12--- Classes and Objects

class Rectangle {
  double? width;
  double? height;

  Rectangle(double width, double height) {
    this.width = width;
    this.height = height;
  }

  double getArea() {
    return width! * height!;
  }

  double getPerimeter() {
    return 2 * (width! + height!);
  }
}

