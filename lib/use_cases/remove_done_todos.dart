import 'package:get_it/get_it.dart';
import 'package:todo_app/models/result.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class RemoveDoneTodos {
  RemoveDoneTodos();
  final _repository = GetIt.instance<TodoRepository>();

  Future<Result> call(
          {required String url, required List<String?> todosId}) async =>
      await _repository.removeTodos(url: url, todosId: todosId);
}
