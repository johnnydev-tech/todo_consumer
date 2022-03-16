import '../datasource/local_todo_datasource.dart';
import '../datasource/remote_todo_datasource.dart';
import '../services/check_internet_service.dart';
import '../models/todo_model.dart';

class TodoRepository {
  final remoteTodoDatasource = RemoteTodoDatasource();
  final localTodoDatasource = LocalTodoDatasource();
  final checkInternetServices = CheckInternetService();

  Future<List<TodoModel>> getTodos() async {
    late List list;

    if (await checkInternetServices.isConnected()) {
      list = await remoteTodoDatasource.getTodos();
      await localTodoDatasource.saveTodos(list);
    } else {
      list = await localTodoDatasource.getTodos();
    }

    final todos = list.map(TodoModel.fromJson).toList();
    return todos;
  }

  Future<void> setTodo(TodoModel todo) async {
    await remoteTodoDatasource.setTodo(todo);
  }
}
