import 'package:flutter/material.dart';

class AppTheme {
  static Color primaryColor = Color(0xFFB7935F);

  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xFFB7935F),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Color(0xFFB7935F),
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 32,
        ),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 32),
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          bodyMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          bodySmall: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.black)));

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )),
  );
}
