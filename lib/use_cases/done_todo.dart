import 'package:get_it/get_it.dart';
import 'package:todo_app/models/result.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class DoneTodo {
  DoneTodo();

  Future<Result> call({required String url, required String id}) async =>
      await GetIt.instance<ITodoRepository>().updateTodo(url: url, todoId: id);
}
