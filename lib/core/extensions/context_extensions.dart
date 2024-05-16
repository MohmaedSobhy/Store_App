import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  Future<Object?> pushName({required String name, Object? arguments}) {
    return Navigator.of(this).pushNamed(name, arguments: arguments);
  }

  Future<Object?> pushAndRemoveUntil(
      {required String name, Object? arguments}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(name, (route) => false);
  }

  void pop() {
    return Navigator.of(this).pop();
  }

  ThemeData getTheme() {
    return Theme.of(this);
  }
}
