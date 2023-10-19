import 'package:flutter/material.dart';

class AstroTheme {
  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(251, 32, 32, 32),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.black,
      onPrimary: Colors.white,
      secondary: Colors.black,
      onSecondary: Color.fromARGB(255, 242, 87, 3),
      error: Colors.red,
      onError: Colors.black,
      background: Colors.black,
      onBackground: Colors.white,
      surface: Colors.blue,
      onSurface: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(251, 32, 32, 32),
    ),
  );
  static ThemeData ligth = ThemeData();
}
