import 'package:flutter/material.dart';
import 'courses.dart'; 
import 'course_details_screen.dart';

class CourseListScreen extends StatelessWidget {
  final List<Course> courses; // List of courses

  CourseListScreen({required this.courses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course List'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return ListTile(
            title: Text(course.title),
            subtitle: Text(course.description),
            onTap: () {
              // Navigate to course details screen when tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetailsScreen(course: course),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
