import 'package:flutter/material.dart';
import 'package:todo_consumer/app/json_placeholder/repositories/todo_repository.dart';

import '../models/todo_model.dart';

class TodoStore extends ChangeNotifier {
  final _todoRepository = TodoRepository();

  List<TodoModel> _todos = [];
  List<TodoModel> get todos => List<TodoModel>.unmodifiable(_todos);

  Future<void> getAllTodos() async {
    _todos = await _todoRepository.getTodos();
    notifyListeners();
  }
}
