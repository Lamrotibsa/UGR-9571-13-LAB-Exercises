import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      home: CourseApp(), // Use CourseApp as the home widget
    );
  }
}

class Course {
  final String code;
  final String title;
  final String description;

  Course({
    required this.code,
    required this.title,
    required this.description,
  });
}

class CourseApp extends StatefulWidget {
  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  Course? _selectedCourse;

  List<Course> courses = [
    Course(
      code: "SiTE-001",
      title: "Introduction To Programming",
      description: "Computer Organization, Architecture, Programming",
    ),
    Course(
      code: "SiTE-002",
      title: "Data Structures and Algorithms",
      description: "Learn about data structures and algorithms",
    ),
    // Add more courses as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Courses List")),
      body: ListView(
        children: [
          for (var course in courses)
            ListTile(
              title: Text(course.title),
              subtitle: Text(course.code),
              onTap: () {
                setState(() {
                  _selectedCourse = course;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CourseDetailsScreen(course: course),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  const CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(course.title, style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text(course.code, style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(course.description),
          ],
        ),
      ),
    );
  }
}
