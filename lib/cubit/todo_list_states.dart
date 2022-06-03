import 'package:flutter/material.dart';

import '../models/todo.dart';

@immutable
abstract class TodoListState {
  List<Todo> get todos => [];
}

class TodoListInitialState extends TodoListState {}

class TodoListLoadedState extends TodoListState {
  @override
  final List<Todo> todos;

  TodoListLoadedState({required this.todos});
}
