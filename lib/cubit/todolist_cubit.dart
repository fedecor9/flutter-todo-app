import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app/cubit/todo_list_states.dart';
import 'package:todo_app/models/result.dart';
import 'package:todo_app/use_cases/done_todo.dart';
import 'package:todo_app/use_cases/fetch_todos.dart';
import 'package:todo_app/use_cases/new_todo.dart';
import 'package:todo_app/use_cases/remove_done_todos.dart';

import 'package:todo_app/models/todo.dart';

class TodolistCubit extends Cubit<TodoListState> {
  TodolistCubit() : super(TodoListInitialState(todos: const []));

  final String _url = 'http://localhost:3005/api';

  void fetchTodos() async {
    final Result result =
        await GetIt.instance<FetchTodos>().call(url: '$_url/notes');

    return result.isSuccess
        ? emit(TodoListLoadedState(todos: result.data))
        : emit(TodoListFailState(
            todos: state.todos, error: result.error as String));
  }

  void addTodo(Todo todo) async {
    final Result result =
        await GetIt.instance<NewTodo>().call(url: '$_url/notes', todo: todo);
    return result.isSuccess
        ? emit(TodoListLoadedState(todos: [...state.todos, result.data]))
        : emit(TodoListFailState(
            todos: state.todos, error: result.error as String));
  }

  void updateTodo(int index, bool? value) async {
    final Result result = await GetIt.instance<DoneTodo>()
        .call(url: '$_url/note', id: state.todos[index].id);
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
        .call(todosId: todosId, url: '$_url/notes');
    return result.isSuccess
        ? emit(TodoListLoadedState(todos: result.data))
        : emit(TodoListFailState(
            todos: state.todos, error: result.error as String));
  }
}
