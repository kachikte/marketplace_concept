import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {

  static lightTheme() {
    return ThemeData.light().copyWith(
        textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'OpenSans',
        ),
        primaryTextTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'OpenSans',
        ),
        accentTextTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'OpenSans',
        ),
        appBarTheme: const AppBarTheme(
            color: AppColors.primaryColor
        ),
        primaryColor: AppColors.primaryColor,
        backgroundColor: AppColors.primaryBackgroundColor
    );
  }

  static darkTheme() {
    return ThemeData.dark().copyWith(
        textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'OpenSans',
        ),
        primaryTextTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'OpenSans',
        ),
        accentTextTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'OpenSans',
        ),
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