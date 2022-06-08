import 'package:todo_app/models/result.dart';

import 'package:todo_app/models/todo.dart';

abstract class TodoRepository {
  Future<Result<List<Todo>>> getTodos();
  Future<Result<Todo>> addTodo({required Todo todo});
  Future<Result<List<Todo>>> updateTodo({required String todoId});
  Future<Result<List<Todo>>> removeTodos({required List<String?> todosId});
}
