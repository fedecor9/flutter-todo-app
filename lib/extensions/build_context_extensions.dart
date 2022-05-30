import 'package:flutter/material.dart';

extension ArgumentExtractor on BuildContext {
  Object? get arguments => ModalRoute.of(this)!.settings.arguments;
}
