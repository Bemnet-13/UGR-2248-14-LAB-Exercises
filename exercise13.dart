// Exercise 13--- Classes and Objects

class Product {
  String? _name;
  int? _price;
  int? _quantity;

  // Constructor
  Product(String name, int price, int quantity) {
    _name = name;
    _price = price;
    _quantity = quantity;
  }

  // Getter for name
  String? getName() {
    return _name;
  }

  // Getter for price
  int? getPrice() {
    return _price;
  }

  // Getter for quantity
  int? getQuantity() {
    return _quantity;
  }

  // Method to calculate total cost
  int getTotalCost() {
    return _price! * _quantity!;
  }
}

