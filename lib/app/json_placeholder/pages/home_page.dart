import 'package:flutter/material.dart';
import 'package:todo_consumer/app/json_placeholder/store/todo_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final todoStore = TodoStore();
  @override
  void initState() {
    super.initState();
    todoStore.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final todos = todoStore.todos;
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (_, index) {
        final todo = todos[index];
        return CheckboxListTile(
          value: todo.isChecked,
          onChanged: (value) {},
          title: Text(
            todo.titile,
          ),
        );
      },
    );
  }
}
