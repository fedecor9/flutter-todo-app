import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension ArgumentExtractor on BuildContext {
  Object? get arguments => ModalRoute.of(this)!.settings.arguments;
}

extension CubitExtension on BuildContext {
  T cubit<T extends BlocBase<Object?>>() => BlocProvider.of<T>(this);
}
