import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app/repositories/todo_repository.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';
import 'package:todo_app/use_cases/done_todo.dart';
import 'package:todo_app/use_cases/fetch_todos.dart';
import 'package:todo_app/use_cases/new_todo.dart';
import 'package:todo_app/use_cases/remove_done_todos.dart';

extension GetItConfig on GetIt {
  void init() {
    registerSingleton<Dio>(Dio());
    registerSingleton<TodoRepository>(TodoRepositoryImpl());
    registerSingleton<FetchTodos>(FetchTodos());
    registerSingleton<NewTodo>(NewTodo());
    registerSingleton<DoneTodo>(DoneTodo());
    registerSingleton<RemoveDoneTodos>(RemoveDoneTodos());
  }
}
