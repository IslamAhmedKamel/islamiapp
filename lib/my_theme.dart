import 'package:flutter/material.dart';

class MyTheme {
  static const Color MyColor = Color(0xFFB7935F);
  static const Color blackColor = Color(0xff242424);
  static const TextStyle primaryStyle = TextStyle(
    fontSize: 30,
    color: MyTheme.blackColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle secondStyle = TextStyle(
    fontSize: 22,
    color: MyTheme.blackColor,
    fontWeight: FontWeight.w600,
  );
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.black,
      onPrimary: Colors.white,
      secondary: Colors.black,
      onSecondary: Colors.white,
      error: Colors.black,
      onError: Colors.white,
      background: Colors.black,
      onBackground: Colors.white,
      surface: Colors.black,
      onSurface: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        color: blackColor,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        color: blackColor,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: blackColor,
        fontWeight: FontWeight.w300,
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      titleTextStyle: MyTheme.primaryStyle,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: MyTheme.MyColor,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.white,
      onPrimary: Colors.black,
      secondary: Colors.white,
      onSecondary: Colors.black,
      error: Colors.white,
      onError: Colors.black,
      background: Colors.white,
      onBackground: Colors.black,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        color: blackColor,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        color: blackColor,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: blackColor,
        fontWeight: FontWeight.w300,
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      titleTextStyle: MyTheme.primaryStyle,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: MyTheme.MyColor,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
