import 'package:flutter/material.dart';

import '../repositories/todo_repository.dart';
// import '../services/todo_service.dart';
import '../models/todo_model.dart';

class TodoStore extends ChangeNotifier {
  final _todoRepository = TodoRepository();
  // final _todoService = TodoService();

  List<TodoModel> _todos = [];
  List<TodoModel> get todos => List<TodoModel>.unmodifiable(_todos);

  Future<void> getAllTodos() async {
    // _todos = await _todoService.getTodos();
    _todos = await _todoRepository.getTodos();
    notifyListeners();
  }
}
