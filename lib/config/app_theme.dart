import 'package:flutter/material.dart';
import './app_colors.dart';

class AppTheme {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.darkBlue,
    accentColor: AppColors.darkBlue,
    colorScheme: ColorScheme(
      primary: AppColors.darkBlue,
      primaryVariant: Color(0xFF117378),
      secondary: AppColors.darkBlue,
      secondaryVariant: Color(0xFFFAFBFB),
      surface: Colors.white,
      background: Colors.white,
      error: Color(0xffb00020),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    backgroundColor: AppColors.gray,
    textTheme: TextTheme(
      headline3: TextStyle(
        fontSize: 24.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
        color: AppColors.darkBlue,
      ),
      bodyText1: TextStyle(
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),
    ),
  );

  static ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headline3: TextStyle(
        fontSize: 24.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
      ),
      bodyText1: TextStyle(
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
