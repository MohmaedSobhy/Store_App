// ignore_for_file: strict_raw_type

import 'package:flutter/material.dart';

class BaseRoute extends PageRouteBuilder {
  BaseRoute({required super.pageBuilder})
      : super(
          transitionDuration: const Duration(milliseconds: 250),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}
