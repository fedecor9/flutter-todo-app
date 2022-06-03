import 'package:bloc/bloc.dart';
import 'package:todo_app/cubit/todo_list_states.dart';

import '../models/todo.dart';

//TODO List<Todo>> to TodoListState
class TodolistCubit extends Cubit<TodoListState> {
  TodolistCubit() : super(TodoListInitialState(todos: const []));

  void addTodo(Todo todo) {
    return emit(TodoListLoadedState(todos: [...state.todos, todo]));
  }

  void updateTodo(int index, bool? value) {
    state.todos[index].done = value!;
    return emit(TodoListLoadedState(todos: [...state.todos]));
  }

  void clearDone() {
    state.todos.removeWhere((element) => element.done == true);
    return emit(TodoListLoadedState(todos: [...state.todos]));
  }
}
