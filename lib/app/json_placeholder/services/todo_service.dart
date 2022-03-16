//SERVICE PATTERN

import 'package:dio/dio.dart';

import '../models/todo_model.dart';

class TodoService {
  Dio dio = Dio();

  Future<List<TodoModel>> getTodos() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/todos');
    var list = response.data as List;
    final todos = list.map(TodoModel.fromJson).toList();

    return todos;
  }
}
