import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace_concept/src/config/app_routes.dart';
import 'package:marketplace_concept/src/config/app_theme.dart';
import 'package:marketplace_concept/src/presentation/screen/general_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MarketPlace Concept',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: ThemeMode.light,
      onGenerateRoute: AppRoutes.generateRoute,
      home: const GeneralScreen(),
    );
  }
}
