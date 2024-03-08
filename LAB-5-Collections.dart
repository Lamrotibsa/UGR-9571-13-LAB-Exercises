class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0; // Return 0 if no marks are available
    }
    int totalMarks = marks.reduce((value, element) => value + element);
    return totalMarks / marks.length;
  }
}

void main() {
  // Create a student object
  Student student = Student('John Doe', [85, 90, 78, 92, 88]);

  // Calculate and print the average mark of the student
  double averageMark = student.calculateAverageMark();
  print('Average Mark for ${student.name}: $averageMark');
}
