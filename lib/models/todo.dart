import 'dart:core';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo.freezed.dart';
part 'todo.g.dart';

@JsonSerializable()
@unfreezed
class Todo with _$Todo {
  factory Todo({
    required final String title,
    required final String id,
    @JsonKey(name: 'text') required final String description,
    @Default(false) bool done,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
