void main() {
  // Create an empty Map to store student names and marks
  Map<String, int> studentMarks = {};

  // Add student names and marks using putIfAbsent
  studentMarks.putIfAbsent('Alice', () => 85);
  studentMarks.putIfAbsent('Bob', () => 92);
  studentMarks.putIfAbsent('Charlie', () => 78);

  // Print the student marks
  print('Student Marks:');
  studentMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  // Check if a student is present in the map
  String studentName = 'Alice';
  if (studentMarks.containsKey(studentName)) {
    print('$studentName is present in the map');
  } else {
    print('$studentName is not present in the map');
  }
}
