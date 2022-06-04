import 'package:dio/dio.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/repositories/todo_repository_interface.dart';

class TodoRepository implements ITodoRepository {
  final Dio _dio;

  TodoRepository(this._dio);

  @override
  Future<List<Todo>> getTodos({required String url}) async {
    List<Todo> todos = [];
    try {
      var response = await _dio.get(url);
      response.data.map((todo) {
        todos.add(Todo.fromJson(todo));
      }).toList();
    } on Exception catch (e) {
      print(e);
    }
    return todos;
  }

  @override
  Future<Todo> addTodo({required String url, required Todo todo}) async {
    Todo newTodo = Todo(title: '', description: '', id: '');
    try {
      var response = await _dio.post(url, data: todo.toJson());
      if (response.statusCode == 200) {
        newTodo = Todo.fromJson(response.data);
      }
      return newTodo;
    } catch (e) {
      print(e);
      return newTodo;
    }
  }

  @override
  Future<List<Todo>> updateTodo(
      {required String url, required String todoId}) async {
    List<Todo> todos = [];
    url = '$url/$todoId';
    try {
      var response = await _dio.put(url);
      response.data.map((todo) => todos.add(Todo.fromJson(todo))).toList();
    } catch (e) {
      print(e);
    }
    return todos;
  }

  @override
  Future<List<Todo>> removeTodos(
      {required String url, required List<String?> todosId}) async {
    List<Todo> todos = [];
    try {
      var response = await _dio.put(url, data: todosId);
      response.data.map((todo) => todos.add(Todo.fromJson(todo))).toList();
    } catch (e) {
      print(e);
    }
    return todos;
  }
}
