// Exercise-25 ---Collections (Lists, Sets, Maps)

void main() {
  // Initialize an empty shopping cart
  Map<String, int> shoppingCart = {};

  // Add items to the shopping cart
  addToCart(shoppingCart, 'Apple', 2);
  addToCart(shoppingCart, 'Banana', 3);
  addToCart(shoppingCart, 'Orange', 1);

  // Display the current items in the shopping cart
  print('Current Shopping Cart:');
  displayCart(shoppingCart);

  // Calculate and display the total price of items in the shopping cart
  double totalPrice = calculateTotalPrice(shoppingCart);
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  // Remove an item from the shopping cart
  removeFromCart(shoppingCart, 'Banana');

  // Display the updated shopping cart
  print('\nUpdated Shopping Cart:');
  displayCart(shoppingCart);
}

// Function to add items to the shopping cart
void addToCart(Map<String, int> cart, String itemName, int quantity) {
  cart[itemName] = quantity;
  print('$quantity $itemName added to the cart.');
}

// Function to display items in the shopping cart
void displayCart(Map<String, int> cart) {
  if (cart.isEmpty) {
    print('The shopping cart is empty.');
  } else {
    cart.forEach((itemName, quantity) {
      print('$itemName: $quantity');
    });
  }
}

// Function to calculate the total price of items in the shopping cart
double calculateTotalPrice(Map<String, int> cart) {
  double totalPrice = 0;
  cart.forEach((itemName, quantity) {
    double itemPrice = getItemPrice(itemName);
    totalPrice += itemPrice * quantity;
  });
  return totalPrice;
}
// Function to get the price of an item
double getItemPrice(String itemName) {
  switch (itemName) {
    case 'Apple':
      return 1.50;
    case 'Banana':
      return 0.75;
    case 'Orange':
      return 2.00;
    default:
      return 0.0; // If item price is not available
  }
}

// Function to remove an item from the shopping cart
void removeFromCart(Map<String, int> cart, String itemName) {
  if (cart.containsKey(itemName)) {
    cart.remove(itemName);
    print('$itemName removed from the cart.');
  } else {
    print('$itemName is not in the cart.');
  }
}
