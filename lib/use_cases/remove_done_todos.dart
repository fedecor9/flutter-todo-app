import 'package:todo_app/models/result.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class RemoveDoneTodos {
  final ITodoRepository _todoRepository;

  RemoveDoneTodos(this._todoRepository);

  Future<Result> call(
          {required String url, required List<String?> todosId}) async =>
      await _todoRepository.removeTodos(url: url, todosId: todosId);
}
