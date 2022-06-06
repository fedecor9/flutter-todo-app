import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/todo.dart';
part 'todo_list_states.freezed.dart';

@immutable
abstract class TodoListState {
  List<Todo> get todos => [];
}

@freezed
class TodoListInitialState extends TodoListState with _$TodoListInitialState {
  factory TodoListInitialState({required final List<Todo> todos}) =
      _TodoListInitialState;
}

@unfreezed
class TodoListLoadedState extends TodoListState with _$TodoListLoadedState {
  factory TodoListLoadedState({required List<Todo> todos}) =
      _TodoListLoadedState;
}

@unfreezed
class TodoListFailState extends TodoListState with _$TodoListFailState {
  factory TodoListFailState(
      {required List<Todo> todos, required String error}) = _TodoListFailState;
}
