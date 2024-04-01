import 'package:flutter/material.dart';

class MyTheme {
  static const Color MyColor = Color(0xFFB7935F);
  static const Color blackColor = Color(0xff242424);

  static ThemeData lightTheme = ThemeData(

    // textTheme: TextTheme(
    //   bodyLarge: GoogleFonts.elMessiri(
    //     fontSize: 30,
    //     color: blackColor,
    //     fontWeight: FontWeight.bold,
    //   ),
    //   bodyMedium: GoogleFonts.elMessiri(
    //     fontSize: 25,
    //     color: blackColor,
    //     fontWeight: FontWeight.w600,
    //   ),
    //   bodySmall: GoogleFonts.elMessiri(
    //     fontSize: 20,
    //     color: blackColor,
    //     fontWeight: FontWeight.w300,
    //   ),
    // ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: MyTheme.MyColor,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    ),
  );
  static ThemeData darkTheme = ThemeData();
}