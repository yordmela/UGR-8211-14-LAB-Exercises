import 'package:flutter/material.dart';
import 'courses.dart'; // Import the Course class

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Course Code: ${course.code}'),
            Text('Course Title: ${course.title}'),
            Text('Course Description: ${course.description}'),
          ],
        ),
      ),
    );
  }
}
