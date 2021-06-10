import 'package:flutter/material.dart';
import './app_colors.dart';

class AppTheme {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.darkBlue,
    accentColor: AppColors.darkBlue,
  );

  static ThemeData darkThemeData = ThemeData(brightness: Brightness.dark);
}
