import 'package:flutter/material.dart';
import 'package:todo_app/views/home_page.dart';

void main(List<String> args) {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Todo App',
      home: HomePage(),
    );
  }
}
