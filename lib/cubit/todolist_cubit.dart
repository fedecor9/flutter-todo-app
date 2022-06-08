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
  TodolistCubit() : super(const TodoListState.initial(todos: [], succes: true));

  void fetchTodos() async {
    final Result result = await GetIt.instance<FetchTodos>().call();

    return result.isSuccess
        ? emit(TodoListState.loaded(todos: result.data, succes: true))
        : emit(TodoListState.fail(
            todos: state.todos, error: result.error as String, succes: false));
  }

  void addTodo(Todo todo) async {
    final Result result = await GetIt.instance<NewTodo>().call(todo: todo);
    return result.isSuccess
        ? emit(TodoListState.loaded(
            todos: [...state.todos, result.data], succes: true))
        : emit(TodoListState.fail(
            todos: state.todos, error: result.error as String, succes: false));
  }

  void updateTodo(int index, bool? value) async {
    final Result result =
        await GetIt.instance<DoneTodo>().call(id: state.todos[index].id);
    return result.isSuccess
        ? emit(TodoListState.loaded(todos: result.data, succes: true))
        : emit(TodoListState.fail(
            todos: state.todos, error: result.error as String, succes: false));
  }

  void clearDone() async {
    List<String?> todosId = state.todos.map((element) {
      if (element.done == true) return element.id;
    }).toList();
    final Result result =
        await GetIt.instance<RemoveDoneTodos>().call(todosId: todosId);
    return result.isSuccess
        ? emit(TodoListState.loaded(todos: result.data, succes: true))
        : emit(TodoListState.fail(
            todos: state.todos, error: result.error as String, succes: false));
  }
}
