// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_list_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoListState {
  List<Todo> get todos => throw _privateConstructorUsedError;
  bool get succes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Todo> todos, bool succes) initial,
    required TResult Function(List<Todo> todos, bool succes) loaded,
    required TResult Function(List<Todo> todos, bool succes, String error) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Todo> todos, bool succes)? initial,
    TResult Function(List<Todo> todos, bool succes)? loaded,
    TResult Function(List<Todo> todos, bool succes, String error)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Todo> todos, bool succes)? initial,
    TResult Function(List<Todo> todos, bool succes)? loaded,
    TResult Function(List<Todo> todos, bool succes, String error)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Fail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Fail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Fail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListStateCopyWith<TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res>;
  $Res call({List<Todo> todos, bool succes});
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  final TodoListState _value;
  // ignore: unused_field
  final $Res Function(TodoListState) _then;

  @override
  $Res call({
    Object? todos = freezed,
    Object? succes = freezed,
  }) {
    return _then(_value.copyWith(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      succes: succes == freezed
          ? _value.succes
          : succes // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> todos, bool succes});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$TodoListStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;

  @override
  $Res call({
    Object? todos = freezed,
    Object? succes = freezed,
  }) {
    return _then(_$Initial(
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      succes: succes == freezed
          ? _value.succes
          : succes // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial({required final List<Todo> todos, required this.succes})
      : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final bool succes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoListState.initial(todos: $todos, succes: $succes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoListState.initial'))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('succes', succes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality().equals(other.succes, succes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(succes));

  @JsonKey(ignore: true)
  @override
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Todo> todos, bool succes) initial,
    required TResult Function(List<Todo> todos, bool succes) loaded,
    required TResult Function(List<Todo> todos, bool succes, String error) fail,
  }) {
    return initial(todos, succes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Todo> todos, bool succes)? initial,
    TResult Function(List<Todo> todos, bool succes)? loaded,
    TResult Function(List<Todo> todos, bool succes, String error)? fail,
  }) {
    return initial?.call(todos, succes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Todo> todos, bool succes)? initial,
    TResult Function(List<Todo> todos, bool succes)? loaded,
    TResult Function(List<Todo> todos, bool succes, String error)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(todos, succes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Fail value) fail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Fail value)? fail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Fail value)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TodoListState {
  const factory Initial(
      {required final List<Todo> todos,
      required final bool succes}) = _$Initial;

  @override
  List<Todo> get todos => throw _privateConstructorUsedError;
  @override
  bool get succes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> implements $TodoListStateCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> todos, bool succes});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res> extends _$TodoListStateCopyWithImpl<$Res>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, (v) => _then(v as _$Loaded));

  @override
  _$Loaded get _value => super._value as _$Loaded;

  @override
  $Res call({
    Object? todos = freezed,
    Object? succes = freezed,
  }) {
    return _then(_$Loaded(
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      succes: succes == freezed
          ? _value.succes
          : succes // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Loaded with DiagnosticableTreeMixin implements Loaded {
  const _$Loaded({required final List<Todo> todos, required this.succes})
      : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final bool succes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoListState.loaded(todos: $todos, succes: $succes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoListState.loaded'))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('succes', succes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality().equals(other.succes, succes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(succes));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Todo> todos, bool succes) initial,
    required TResult Function(List<Todo> todos, bool succes) loaded,
    required TResult Function(List<Todo> todos, bool succes, String error) fail,
  }) {
    return loaded(todos, succes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Todo> todos, bool succes)? initial,
    TResult Function(List<Todo> todos, bool succes)? loaded,
    TResult Function(List<Todo> todos, bool succes, String error)? fail,
  }) {
    return loaded?.call(todos, succes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Todo> todos, bool succes)? initial,
    TResult Function(List<Todo> todos, bool succes)? loaded,
    TResult Function(List<Todo> todos, bool succes, String error)? fail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos, succes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Fail value) fail,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Fail value)? fail,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Fail value)? fail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements TodoListState {
  const factory Loaded(
      {required final List<Todo> todos, required final bool succes}) = _$Loaded;

  @override
  List<Todo> get todos => throw _privateConstructorUsedError;
  @override
  bool get succes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailCopyWith<$Res> implements $TodoListStateCopyWith<$Res> {
  factory _$$FailCopyWith(_$Fail value, $Res Function(_$Fail) then) =
      __$$FailCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> todos, bool succes, String error});
}

/// @nodoc
class __$$FailCopyWithImpl<$Res> extends _$TodoListStateCopyWithImpl<$Res>
    implements _$$FailCopyWith<$Res> {
  __$$FailCopyWithImpl(_$Fail _value, $Res Function(_$Fail) _then)
      : super(_value, (v) => _then(v as _$Fail));

  @override
  _$Fail get _value => super._value as _$Fail;

  @override
  $Res call({
    Object? todos = freezed,
    Object? succes = freezed,
    Object? error = freezed,
  }) {
    return _then(_$Fail(
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      succes: succes == freezed
          ? _value.succes
          : succes // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Fail with DiagnosticableTreeMixin implements Fail {
  const _$Fail(
      {required final List<Todo> todos,
      required this.succes,
      required this.error})
      : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final bool succes;
  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoListState.fail(todos: $todos, succes: $succes, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoListState.fail'))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('succes', succes))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fail &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality().equals(other.succes, succes) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(succes),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$FailCopyWith<_$Fail> get copyWith =>
      __$$FailCopyWithImpl<_$Fail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Todo> todos, bool succes) initial,
    required TResult Function(List<Todo> todos, bool succes) loaded,
    required TResult Function(List<Todo> todos, bool succes, String error) fail,
  }) {
    return fail(todos, succes, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Todo> todos, bool succes)? initial,
    TResult Function(List<Todo> todos, bool succes)? loaded,
    TResult Function(List<Todo> todos, bool succes, String error)? fail,
  }) {
    return fail?.call(todos, succes, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Todo> todos, bool succes)? initial,
    TResult Function(List<Todo> todos, bool succes)? loaded,
    TResult Function(List<Todo> todos, bool succes, String error)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(todos, succes, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Fail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Fail value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Fail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class Fail implements TodoListState {
  const factory Fail(
      {required final List<Todo> todos,
      required final bool succes,
      required final String error}) = _$Fail;

  @override
  List<Todo> get todos => throw _privateConstructorUsedError;
  @override
  bool get succes => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$FailCopyWith<_$Fail> get copyWith => throw _privateConstructorUsedError;
}
