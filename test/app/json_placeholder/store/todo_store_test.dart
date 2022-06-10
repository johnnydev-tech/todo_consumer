import 'package:flutter_test/flutter_test.dart';
import 'package:todo_consumer/app/json_placeholder/store/todo_store.dart';

void main() async {
  // testWidgets('todo store ...', (tester) async {
  //   // TODO: Implement test
  // });

  final store = TodoStore();
  await store.getAllTodos();
  print(store.todos[0].title);
}
