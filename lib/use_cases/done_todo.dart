import 'package:todo_app/models/result.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class DoneTodo {
  final ITodoRepository _todoRepository;

  DoneTodo(this._todoRepository);

  Future<Result> call({required String url, required String id}) async =>
      await _todoRepository.updateTodo(url: url, todoId: id);
}
