import '../models/todo.dart';

abstract class ITodoRepository {
  Future<List<Todo>> getTodos({required String url});
  Future<Todo> addTodo({required String url, required Todo todo});
}
