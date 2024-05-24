import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quranapp/developer.dart';
import 'package:quranapp/providers/provider_settings.dart';
import 'package:quranapp/sora_Details.dart';

import 'hadeth_Details.dart';
import 'home.dart';
import 'my_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProviderSettings(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var ProvSettings = Provider.of<ProviderSettings>(context);
    return MaterialApp(
      locale: Locale(ProvSettings.local),

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SoraDetails.routName: (context) => SoraDetails(),
        HadethDetails.routName: (context) => HadethDetails(),
        DevelopInfo.routName: (context) => DevelopInfo(),
      },
      theme: MyTheme.lightTheme,

      // darkTheme: MyTheme.darkTheme,
    );
  }
}
