import 'package:get_it/get_it.dart';

import '../models/result.dart';
import '../models/todo.dart';
import '../repositories/todo_repository_interface.dart';

class NewTodo {
  NewTodo();

  Future<Result> call({required String url, required Todo todo}) async =>
      await GetIt.instance<ITodoRepository>().addTodo(url: url, todo: todo);
}
