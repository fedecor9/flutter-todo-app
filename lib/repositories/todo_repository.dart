import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app/models/result.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class TodoRepositoryImpl implements TodoRepository {
  final Dio _dio = GetIt.instance<Dio>();

  final String _url = 'http://localhost:3005/api';

  TodoRepositoryImpl();

  @override
  Future<Result<List<Todo>>> getTodos() async {
    try {
      var response = await _dio.get('$_url/notes');
      return Result.success(
          response.data.map<Todo>((todo) => Todo.fromJson(todo)).toList());
    } on DioError catch (e) {
      return Result.failure(e.message);
    }
  }

  @override
  Future<Result<Todo>> addTodo({required Todo todo}) async {
    try {
      var response = await _dio.post('$_url/notes', data: todo.toJson());
      return Result.success(Todo.fromJson(response.data));
    } on DioError catch (e) {
      return Result.failure(e.message);
    }
  }

  @override
  Future<Result<List<Todo>>> updateTodo({required String todoId}) async {
    var url = '$_url/note/$todoId';
    try {
      var response = await _dio.put(url);
      return Result.success(
          response.data.map<Todo>((todo) => Todo.fromJson(todo)).toList());
    } on DioError catch (e) {
      return Result.failure(e.message);
    }
  }

  @override
  Future<Result<List<Todo>>> removeTodos(
      {required List<String?> todosId}) async {
    try {
      var response = await _dio.put('$_url/notes', data: todosId);
      return Result.success(
          response.data.map<Todo>((todo) => Todo.fromJson(todo)).toList());
    } on DioError catch (e) {
      return Result.failure(e.message);
    }
  }
}
