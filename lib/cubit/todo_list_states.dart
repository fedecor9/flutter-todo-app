import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/models/todo.dart';
part 'todo_list_states.freezed.dart';

/* @immutable
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
 */
@freezed
class TodoListState with _$TodoListState {
  const factory TodoListState.initial(
      {required List<Todo> todos, required bool succes}) = Initial;
  const factory TodoListState.loaded(
      {required List<Todo> todos, required bool succes}) = Loaded;
  const factory TodoListState.fail(
      {required List<Todo> todos,
      required bool succes,
      required String error}) = Fail;
}
