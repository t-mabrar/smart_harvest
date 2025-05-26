import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    indicatorColor: Color(0xFF331201),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFFF5D16),
      onPrimary: Color(0xFF331201),
      secondary: Color(0xFF0A0300),
      onSecondary: Color(0xFF0A0300),
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.black,
      onSurface: Colors.black,
    ),
  );
}
