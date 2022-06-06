import '../models/result.dart';
import '../models/todo.dart';
import '../repositories/todo_repository_interface.dart';

class NewTodo {
  final ITodoRepository _todoRepository;

  NewTodo(this._todoRepository);

  Future<Result> call({required String url, required Todo todo}) async =>
      await _todoRepository.addTodo(url: url, todo: todo);
}
