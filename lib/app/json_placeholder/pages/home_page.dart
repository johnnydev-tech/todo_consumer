import 'package:flutter/material.dart';

import '../store/todo_store.dart';

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
    todoStore.getAllTodos();
  }

  @override
  Widget build(BuildContext context) {
    final todos = todoStore.todos;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (_, index) {
          final todo = todos[index];
          return CheckboxListTile(
            value: todo.isChecked,
            onChanged: (value) {},
            title: Text(
              todo.title,
            ),
          );
        },
      ),
    );
  }
}
