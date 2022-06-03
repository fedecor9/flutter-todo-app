import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:todo_app/cubit/todo_list_states.dart';
import 'package:todo_app/repositories/todo_repository.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

import '../models/todo.dart';

class TodolistCubit extends Cubit<TodoListState> {
  TodolistCubit() : super(TodoListInitialState(todos: const []));

  final ITodoRepository iTodoRepository = TodoRepository(Dio());

  void fetchTodos() async {
    return emit(TodoListLoadedState(
        todos: await iTodoRepository.getTodos(
            url: 'http://localhost:3005/api/notes')));
  }

  void addTodo(Todo todo) async {
    Todo newTodo = await iTodoRepository.addTodo(
        url: 'http://localhost:3005/api/notes', todo: todo);
    if (newTodo.title == '') return emit(state);
    return emit(TodoListLoadedState(todos: [...state.todos, newTodo]));
  }

  void updateTodo(int index, bool? value) async {
    return emit(TodoListLoadedState(
        todos: await iTodoRepository.updateTodo(
            url: 'http://localhost:3005/api/note',
            todoId: state.todos[index].id)));
  }

  void clearDone() async {
    List<String?> todosId = state.todos.map((element) {
      if (element.done == true) return element.id;
    }).toList();
    return emit(TodoListLoadedState(
        todos: await iTodoRepository.removeTodos(
            url: 'http://localhost:3005/api/notes', todosId: todosId)));
  }
}
