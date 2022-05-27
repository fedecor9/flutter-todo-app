import 'dart:core';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo(
      {required String title,
      required String description,
      @Default(false) bool done}) = _Todo;

  //factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}
