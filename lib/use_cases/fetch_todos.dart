import 'package:get_it/get_it.dart';
import 'package:todo_app/models/result.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class FetchTodos {
  FetchTodos();

  Future<Result> call({required String url}) async =>
      await GetIt.instance<ITodoRepository>().getTodos(url: url);
}
