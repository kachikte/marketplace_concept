import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {

  static lightTheme() {
    return ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
            color: AppColors.primaryColor
        ),
        primaryColor: AppColors.primaryColor,
        backgroundColor: AppColors.primaryBackgroundColor
    );
  }

  static darkTheme() {
    return ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
            color: AppColors.primaryColorDark
        ),
        primaryColor: AppColors.primaryColorDark,
        backgroundColor: AppColors.primaryBackgroundColorDark
    );
  }

  static ThemeMode setThemeMode({required bool isLight}) {
    return isLight ? ThemeMode.light : ThemeMode.dark;
  }
}