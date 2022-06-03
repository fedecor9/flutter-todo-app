import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:todo_app/repositories/todo_repository.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

import '../models/todo.dart';

class TodolistCubit extends Cubit<List<Todo>> {
  TodolistCubit() : super([]);

  final ITodoRepository iTodoRepository = TodoRepository(Dio());

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

  void updateTodo(int index, bool? value) async {
    return emit(await iTodoRepository.updateTodo(
        url: 'http://localhost:3005/api/note', todoId: state[index].id));
  }

  void clearDone() async {
    List<String?> todosId = state.map((element) {
      if (element.done == true) return element.id;
    }).toList();
    return emit(await iTodoRepository.removeTodos(
        url: 'http://localhost:3005/api/notes', todosId: todosId));
  }
}
