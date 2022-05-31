import 'dart:core';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo.freezed.dart';

@unfreezed
class Todo with _$Todo {
  factory Todo({
    required final String title,
    required final String description,
    @Default(false) bool done,
  }) = _Todo;
}
