import 'package:flutter/material.dart';
import 'package:store_app/core/app/env.variables.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariables.instanse.getEnvType() == 'Dev',
      home: const Scaffold(),
    );
  }
}
