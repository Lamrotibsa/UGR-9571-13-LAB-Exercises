class Rectangle {
  double width;
  double height;

  // Constructor
  Rectangle(this.width, this.height);

  // Method to calculate area
  double calculateArea() {
    return width * height;
  }

  // Method to calculate perimeter
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Create a rectangle object
  Rectangle rectangle = Rectangle(5, 10);

  // Calculate and display area
  double area = rectangle.calculateArea();
  print('Area of the rectangle: $area');

  // Calculate and display perimeter
  double perimeter = rectangle.calculatePerimeter();
  print('Perimeter of the rectangle: $perimeter');
}
