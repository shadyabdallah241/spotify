import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lightTheme=ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    fontFamily: "Satoshi",
      brightness: .light,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      textStyle: TextStyle(fontSize: 20,fontWeight: .bold),
      shape: RoundedRectangleBorder(borderRadius: .circular(30))
    ))
  );
  static final darkTheme=ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.darkBackground,
      fontFamily: "Satoshi",
      brightness: .dark,
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          textStyle: TextStyle(fontSize: 20,fontWeight: .bold),
          shape: RoundedRectangleBorder(borderRadius: .circular(30))
      ))
  );
}