class Person {
  String name;
  int age;
  String address;

  // Constructor
  Person(this.name, this.age, this.address);

  // Method to display person's information
  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  // Constructor
  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  // Method to calculate total marks
  int calculateTotalMarks() {
    return marks.reduce((value, element) => value + element);
  }

  // Method to calculate average marks
  double calculateAverageMarks() {
    return calculateTotalMarks() / marks.length;
  }
}

void main() {
  // Create a student object
  Student student = Student('John Doe', 20, '123 Main St', 101, [85, 90, 78, 92, 88]);

  // Display student's information
  print('Student Information:');
  student.displayInfo();
  print('Roll Number: ${student.rollNumber}');
  print('Marks: ${student.marks}');

  // Calculate and display total marks
  int totalMarks = student.calculateTotalMarks();
  print('Total Marks: $totalMarks');

  // Calculate and display average marks
  double averageMarks = student.calculateAverageMarks();
  print('Average Marks: $averageMarks');
}
