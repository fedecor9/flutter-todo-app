import 'package:todo_app/models/result.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class FetchTodos {
  final ITodoRepository _todoRepository;

  FetchTodos(this._todoRepository);

  Future<Result> call({required String url}) async =>
      await _todoRepository.getTodos(url: url);
}
