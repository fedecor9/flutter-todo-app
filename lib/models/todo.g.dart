// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TodoToJson(Todo instance) => <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'text': instance.description,
      'done': instance.done,
    };

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      title: json['title'] as String,
      id: json['id'] as String,
      description: json['text'] as String,
      done: json['done'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'text': instance.description,
      'done': instance.done,
    };
