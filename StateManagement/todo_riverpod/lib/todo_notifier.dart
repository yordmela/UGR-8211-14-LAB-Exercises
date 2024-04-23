import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riverpod/todo_model.dart';

final todosProvider = ChangeNotifierProvider<TodosNotifier>((ref) {
  return TodosNotifier(todos: []);
});

class TodosNotifier extends ChangeNotifier{
  List<Todo> todos;
  TodosNotifier({required this.todos});

  Future<void> fetchTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      todos = data.map((json) => Todo.fromJson(json)).toList();
      notifyListeners();
    } else {
      print('Error fetching todos: ${response.statusCode}');
    }
  }
}