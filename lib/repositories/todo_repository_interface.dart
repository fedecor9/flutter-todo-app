import 'package:todo_app/models/result.dart';

import '../models/todo.dart';

abstract class ITodoRepository {
  Future<Result> getTodos({required String url});
  Future<Result> addTodo({required String url, required Todo todo});
  Future<Result> updateTodo({required String url, required String todoId});
  Future<Result> removeTodos(
      {required String url, required List<String?> todosId});
}
