import 'package:flutter/material.dart';
import './pages/course_list_screen.dart';
import './pages/course_details_screen.dart';
import './pages/courses.dart' ;// Import your CourseListScreen widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CourseListScreen(
        courses: initialCourses, // Provide initial list of courses here
      ),
    );
  }
}

// Define some initial dummy data for testing
List<Course> initialCourses = [
  Course(code: 'CS101', title: 'Introduction to Computer Science', description: 'This course covers the basics of computer science.'),
  Course(code: 'MATH202', title: 'Advanced Mathematics', description: 'A deep dive into mathematical concepts and applications.'),
  Course(code: 'ENG301', title: 'Literature and Writing', description: 'Exploring classic and contemporary literature.'),
];
