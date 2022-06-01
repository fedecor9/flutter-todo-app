import 'package:bloc/bloc.dart';

import '../models/todo.dart';

class TodolistCubit extends Cubit<List<Todo>> {
  TodolistCubit() : super([]);

  void addTodo(Todo todo) {
    return emit([...state, todo]);
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
