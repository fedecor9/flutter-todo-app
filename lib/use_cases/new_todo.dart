import 'package:get_it/get_it.dart';

import 'package:todo_app/models/result.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class NewTodo {
  NewTodo();
  final _repository = GetIt.instance<TodoRepository>();

  Future<Result> call({required String url, required Todo todo}) async =>
      await _repository.addTodo(url: url, todo: todo);
}
