import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    fontFamily: "Satoshi",
    brightness: .light,
    inputDecorationTheme: InputDecorationTheme(
      isDense: false,
      hintStyle: TextStyle(color: Color(0xff383838)),
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(30),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 123, 121, 121),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 123, 121, 121),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        elevation: 0,
        textStyle: TextStyle(fontSize: 16, fontWeight: .bold),
        shape: RoundedRectangleBorder(borderRadius: .circular(30)),
      ),
    ),
  );
  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    fontFamily: "Satoshi",
    brightness: .dark,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      isDense: false,
      contentPadding: EdgeInsets.all(30),
      hintStyle: TextStyle(color: Color(0xffA7A7A7), fontWeight: .w500),
      fillColor: Colors.transparent,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 123, 121, 121),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 123, 121, 121),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: TextStyle(fontSize: 20, fontWeight: .bold),
        shape: RoundedRectangleBorder(borderRadius: .circular(30)),
      ),
    ),
  );
}
