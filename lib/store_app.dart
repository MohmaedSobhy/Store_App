import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/core/routes/app_routes.dart';
import 'package:store_app/core/styles/theme/app_theme.dart';
import 'package:store_app/core/styles/theme/controller/app_theme_cubit.dart';
import 'package:store_app/core/styles/theme/controller/app_theme_state.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppThemeCubit.instance..checkTheme(),
      child: BlocBuilder<AppThemeCubit, AppThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner:
                EnvVariables.instanse.getEnvType() == 'Dev',
              initialRoute: AppRoute.home,
              onGenerateRoute: AppRoute.onGenerateRoute,
            theme: (state is LightThemeState)
                ? AppTheme.lightTheme
                : AppTheme.darkTheme,
          );
        },
      ),
    );
  }
}
