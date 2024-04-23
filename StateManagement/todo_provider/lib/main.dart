import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api_service.dart';
import 'home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ApiService>.value(
      value: ApiService(), // Create an instance of ApiService
      child: MaterialApp(
        title: 'Todo App',
        home: MyHomePage(),
      ),
    ),
  );
}

