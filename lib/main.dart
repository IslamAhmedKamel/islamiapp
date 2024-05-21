import 'package:flutter/material.dart';
 import 'package:quranapp/sora_Details.dart';

import 'hadeth_Details.dart';
import 'home.dart';
import 'my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
 void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en'),
      
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SoraDetails.routName: (context) => SoraDetails(),
        HadethDetails.routName: (context) => HadethDetails(),
      },
      theme: MyTheme.lightTheme,
      // darkTheme: MyTheme.darkTheme,
    );
  }
}
