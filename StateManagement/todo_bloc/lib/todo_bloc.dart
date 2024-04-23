import 'dart:convert';
import 'package:todo_bloc/todo_events.dart';
import 'package:todo_bloc/todo_state.dart';
import 'package:todo_bloc/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodosLoading()) {
    on<LoadTodos>(_onLoadTodos);
  }

  Future<void> _onLoadTodos(LoadTodos event, Emitter<TodosState> emit) async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        final todos = data.map((json) => Todo.fromJson(json)).toList();
        emit(TodosLoaded(todos));
      } else {
        emit(TodosError('Error fetching todos'));
      }
    } catch (error) {
      emit(TodosError(error.toString()));
    }
  }
}