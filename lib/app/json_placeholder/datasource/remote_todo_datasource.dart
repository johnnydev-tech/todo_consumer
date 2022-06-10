import 'package:dio/dio.dart';

import '../models/todo_model.dart';

class RemoteTodoDatasource {
  Dio dio = Dio();

  Future<dynamic> getTodos() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/todos');
    return response.data;
  }

  Future<dynamic> setTodo(TodoModel todo) async {
    final data = {
      'id': todo.id,
      'title': todo.title,
    };

    final response = await dio.put(
      'https://jsonplaceholder.typicode.com/todos',
      data: data,
    );
    return response.data;
  }
}
