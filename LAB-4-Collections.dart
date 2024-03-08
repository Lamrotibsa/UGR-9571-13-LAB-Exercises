void main() {
  Map<String, int> shoppingCart = {};

  // Add items to the cart
  addItem(shoppingCart, 'Laptop', 1);
  addItem(shoppingCart, 'Phone', 2);
  addItem(shoppingCart, 'Headphones', 1);

  // Display the items in the cart
  print('Shopping Cart:');
  displayCart(shoppingCart);

  // Calculate and display the total price
  double totalPrice = calculateTotalPrice(shoppingCart);
  print('\nTotal Price: \$${totalPrice.toStringAsFixed(2)}');

  // Remove an item from the cart
  removeItem(shoppingCart, 'Phone');

  // Display the updated cart
  print('\nUpdated Shopping Cart:');
  displayCart(shoppingCart);
}

void addItem(Map<String, int> cart, String item, int quantity) {
  if (cart.containsKey(item)) {
    cart[item] += quantity;
  } else {
    cart[item] = quantity;
  }
}

void removeItem(Map<String, int> cart, String item) {
  if (cart.containsKey(item)) {
    cart.remove(item);
  }
}

double calculateTotalPrice(Map<String, int> cart) {
  const Map<String, double> prices = {
    'Laptop': 999.99,
    'Phone': 499.99,
    'Headphones': 79.99,
  };

  double total = 0;
  cart.forEach((item, quantity) {
    if (prices.containsKey(item)) {
      total += prices[item] * quantity;
    }
  });
  return total;
}

void displayCart(Map<String, int> cart) {
  cart.forEach((item, quantity) {
    print('$item: $quantity');
  });
}
