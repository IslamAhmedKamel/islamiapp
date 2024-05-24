import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quranapp/providers/provider_settings.dart';
import 'package:quranapp/tabs/hadeth.dart';
import 'package:quranapp/tabs/quran.dart';
import 'package:quranapp/tabs/radio.dart';
import 'package:quranapp/tabs/sebha.dart';
import 'package:quranapp/tabs/setting.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    HadethTab(),
    Setting()
  ];

  @override
  Widget build(BuildContext context) {
    var ProvSettings = Provider.of<ProviderSettings>(context);
    return Stack(
      children: [
        Image.asset(
          ProvSettings.theme == ThemeMode.light
              ? 'assets/images/default_bg.png'
              : 'assets/images/dark_bg.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: TextStyle(
                fontFamily: 'PlaypenSans',
                fontSize: 30,
                color: ProvSettings.theme == ThemeMode.light
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                label: AppLocalizations.of(context)!.quran,
                tooltip: 'القرآن',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                label: AppLocalizations.of(context)!.sebha,
                tooltip: 'السبحة',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icon_radio.png'),
                ),
                label: AppLocalizations.of(context)!.radio,
                tooltip: "الراديو",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                label: AppLocalizations.of(context)!.ahadeths,
                tooltip: ' الاحاديث',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.setting,
                tooltip: 'الاعدادات',
              ),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }
}
