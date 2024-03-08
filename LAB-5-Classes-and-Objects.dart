import 'dart:math';

// Abstract Shape class
abstract class Shape {
  // Abstract method to calculate area
  double calculateArea();
}

// Circle subclass
class Circle extends Shape {
  double radius;

  // Constructor
  Circle(this.radius);

  // Implementation of calculateArea method for Circle
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

// Square subclass
class Square extends Shape {
  double side;

  // Constructor
  Square(this.side);

  // Implementation of calculateArea method for Square
  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  // Create Circle object
  Circle circle = Circle(5);
  // Calculate and display area of circle
  print('Area of Circle: ${circle.calculateArea()}');

  // Create Square object
  Square square = Square(4);
  // Calculate and display area of square
  print('Area of Square: ${square.calculateArea()}');
}
