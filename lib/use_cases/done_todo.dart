import 'package:get_it/get_it.dart';
import 'package:todo_app/models/result.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class DoneTodo {
  DoneTodo();

  final _repository = GetIt.instance<TodoRepository>();

  Future<Result> call({required String id}) async =>
      await _repository.updateTodo(todoId: id);
}
