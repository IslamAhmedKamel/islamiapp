
import 'package:flutter/material.dart';
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
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(

          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: 'Quran',
                  tooltip: 'القرآن'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: 'Sebhah',
                  tooltip: 'السبحة'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_radio.png'),
                  ),
                  label: 'Radio',
                  tooltip: "الراديو"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: 'Ahadeth',
                  tooltip: ' الاحاديث'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'settings',
                  tooltip: 'الاعدادات'),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }
}
