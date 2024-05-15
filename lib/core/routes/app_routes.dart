import 'package:flutter/material.dart';
import 'package:store_app/core/routes/base_route.dart';

abstract class AppRoute {
  static const String home = 'Home Screen';
  static const String favourite = 'Favourite Screen';

  static Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) {
            return const Center();
          },
        );
      case favourite:
        return BaseRoute(pageBuilder: (_, __, ___) {
          return const Center();
        });
      default:
        const Center();
    }
    return null;
  }
}
