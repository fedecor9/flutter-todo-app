import '../models/todo.dart';

abstract class ITodoRepository {
  Future<List<Todo>> getTodos({required String url});
  Future<Todo> addTodo({required String url, required Todo todo});
  Future<List<Todo>> updateTodo({required String url, required String todoId});
  Future<List<Todo>> removeTodos(
      {required String url, required List<String?> todosId});
}
