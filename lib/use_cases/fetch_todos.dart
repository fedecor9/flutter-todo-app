import 'package:get_it/get_it.dart';
import 'package:todo_app/models/result.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class FetchTodos {
  FetchTodos();
  final _repository = GetIt.instance<TodoRepository>();

  Future<Result> call({required String url}) async =>
      await _repository.getTodos(url: url);
}
