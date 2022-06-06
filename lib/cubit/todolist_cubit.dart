// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app/cubit/todo_list_states.dart';
import 'package:todo_app/models/result.dart';
import 'package:todo_app/use_cases/done_todo.dart';
import 'package:todo_app/use_cases/fetch_todos.dart';
import 'package:todo_app/use_cases/new_todo.dart';
import 'package:todo_app/use_cases/remove_done_todos.dart';

import '../models/todo.dart';

class TodolistCubit extends Cubit<TodoListState> {
  TodolistCubit() : super(TodoListInitialState(todos: const []));

  void fetchTodos() async {
    final Result result = await GetIt.instance<FetchTodos>()
        .call(url: 'http://localhost:3005/api/notes');

    return result.isSuccess
        ? emit(TodoListLoadedState(todos: result.data))
        : emit(TodoListFailState(
            todos: state.todos, error: result.error as String));
  }

  void addTodo(Todo todo) async {
    final Result result = await GetIt.instance<NewTodo>()
        .call(url: 'http://localhost:3005/api/notes', todo: todo);
    return result.isSuccess
        ? emit(TodoListLoadedState(todos: [...state.todos, result.data]))
        : emit(TodoListFailState(
            todos: state.todos, error: result.error as String));
  }

  void updateTodo(int index, bool? value) async {
    final Result result = await GetIt.instance<DoneTodo>()
        .call(url: 'http://localhost:3005/api/note', id: state.todos[index].id);
    return result.isSuccess
        ? emit(TodoListLoadedState(todos: result.data))
        : emit(TodoListFailState(
            todos: state.todos, error: result.error as String));
  }

  void clearDone() async {
    List<String?> todosId = state.todos.map((element) {
      if (element.done == true) return element.id;
    }).toList();
    final Result result = await GetIt.instance<RemoveDoneTodos>()
        .call(todosId: todosId, url: 'http://localhost:3005/api/notes');
    return result.isSuccess
        ? emit(TodoListLoadedState(todos: result.data))
        : emit(TodoListFailState(
            todos: state.todos, error: result.error as String));
  }
}
