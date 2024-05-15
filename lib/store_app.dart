import 'package:flutter/material.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/core/routes/app_routes.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariables.instanse.getEnvType() == 'Dev',
      initialRoute: AppRoute.home,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
