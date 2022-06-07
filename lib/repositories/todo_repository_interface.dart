import 'package:todo_app/models/result.dart';

import 'package:todo_app/models/todo.dart';

abstract class TodoRepository {
  Future<Result<List<Todo>>> getTodos({required String url});
  Future<Result<Todo>> addTodo({required String url, required Todo todo});
  Future<Result<List<Todo>>> updateTodo(
      {required String url, required String todoId});
  Future<Result<List<Todo>>> removeTodos(
      {required String url, required List<String?> todosId});
}
