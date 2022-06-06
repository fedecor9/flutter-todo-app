import 'package:dio/dio.dart';
import 'package:todo_app/models/result.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class TodoRepository implements ITodoRepository {
  final Dio _dio;

  TodoRepository(this._dio);

  @override
  Future<Result> getTodos({required String url}) async {
    List<Todo> todos = [];
    try {
      var response = await _dio.get(url);
      response.data.map((todo) {
        todos.add(Todo.fromJson(todo));
      }).toList();
      return Result.success(todos);
    } on DioError catch (e) {
      return Result.failure(e.message);
    }
  }

  @override
  Future<Result> addTodo({required String url, required Todo todo}) async {
    try {
      var response = await _dio.post(url, data: todo.toJson());
      return Result.success(Todo.fromJson(response.data));
    } on DioError catch (e) {
      return Result.failure(e.message);
    }
  }

  @override
  Future<Result> updateTodo(
      {required String url, required String todoId}) async {
    List<Todo> todos = [];
    url = '$url/$todoId';
    try {
      var response = await _dio.put(url);
      response.data.map((todo) => todos.add(Todo.fromJson(todo))).toList();
      return Result.success(todos);
    } on DioError catch (e) {
      return Result.failure(e.message);
    }
  }

  @override
  Future<Result> removeTodos(
      {required String url, required List<String?> todosId}) async {
    List<Todo> todos = [];
    try {
      var response = await _dio.put(url, data: todosId);
      response.data.map((todo) => todos.add(Todo.fromJson(todo))).toList();
      return Result.success(todos);
    } on DioError catch (e) {
      return Result.failure(e.message);
    }
  }
}
