import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app/cubit/todolist_cubit.dart';
import 'package:todo_app/views/home_page.dart';
import 'package:todo_app/config/get_it_config.dart';

void main(List<String> args) {
  GetIt.instance.init();
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodolistCubit()..fetchTodos(),
      child: const MaterialApp(
        title: 'Todo App',
        home: HomePage(),
      ),
    );
  }
}
