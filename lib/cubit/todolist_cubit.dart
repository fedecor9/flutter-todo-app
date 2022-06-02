import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:todo_app/repositories/todo_repository.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

import '../models/todo.dart';

class TodolistCubit extends Cubit<List<Todo>> {
  TodolistCubit() : super([]);

  final iTodoRepository = TodoRepository(Dio());

  void fetchTodos() async {
    return emit(
        await iTodoRepository.getTodos(url: 'http://localhost:3005/api/notes'));
  }

  void addTodo(Todo todo) async {
    Todo newTodo = await iTodoRepository.addTodo(
        url: 'http://localhost:3005/api/notes', todo: todo);
    if (newTodo.title == '') return emit(state);
    return emit([...state, newTodo]);
  }

  void updateTodo(int index, bool? value) {
    state[index].done = value!;
    return emit([...state]);
  }

  void clearDone() {
    state.removeWhere((element) => element.done == true);
    return emit([...state]);
  }
}
