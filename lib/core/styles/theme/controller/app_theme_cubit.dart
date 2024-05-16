import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/styles/theme/controller/app_theme_state.dart';
import 'package:store_app/core/utils/cach_helper.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit._() : super(AppThemeInitial());

  static AppThemeCubit instance = AppThemeCubit._();
  final String themeKey = 'ThemeKey';

  Future<void> checkTheme() async {
    final dynamic currentTheme = CacheHelper.get(key: themeKey) ?? 'light';
    if (currentTheme == ThemeMode.light.name) {
      emit(LightThemeState());
    } else {
      emit(DarkThemeState());
    }
  }

  Future<void> changeTheme({required String themeName}) async {
    if (themeName == ThemeMode.light.name) {
      emit(LightThemeState());
    } else {
      emit(DarkThemeState());
    }
    await CacheHelper.put(key: themeKey, value: themeName);
  }
}
