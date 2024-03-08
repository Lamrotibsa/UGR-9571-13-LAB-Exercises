class Product {
  String name;
  double price;
  int quantity;

  // Constructor
  Product(this.name, this.price, this.quantity);

  // Method to calculate total cost
  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Create a product object
  Product product = Product('Laptop', 999.99, 2);

  // Calculate and display total cost
  double totalCost = product.calculateTotalCost();
  print('Total cost of ${product.name}: \$${totalCost.toStringAsFixed(2)}');
}
