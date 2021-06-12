import 'package:flutter/material.dart';
import './app_colors.dart';

class AppTheme {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.darkBlue,
    accentColor: AppColors.darkBlue,
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
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.darkBlue,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.darkBlue),
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
