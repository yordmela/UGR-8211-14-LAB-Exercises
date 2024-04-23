class Todo {
  final int id;
  final int userId;
  final String title;
  final bool completed; 

  Todo({
    required this.id,
    required this.title,
    required this.userId,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        id: json['id'],
        title: json['title'],
        userId: json['userId'],
        completed: json['completed'],
      );
}