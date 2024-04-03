 import 'package:flutter/material.dart';
import 'package:quranapp/sora_Details.dart';

import 'hadeth_Details.dart';
import 'home.dart';
import 'my_theme.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SoraDetails.routName: (context) => SoraDetails(),
        HadethDetails.routName:(context) => HadethDetails(),
      },
      theme: MyTheme.lightTheme,
      // darkTheme: MyTheme.darkTheme,
    );
  }
}