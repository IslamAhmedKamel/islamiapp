import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quranapp/providers/provider_settings.dart';

import '../my_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int index = 0;
  int num = 0;
  List<String> tathbeh = [
    'صلى على محمد',
    'لا حول ولا قوة إلا بالله',
    'الله اكبر',
    'لا إله إلا الله',
    'سبحان الله',
    'الحمد لله',
    'اللهم انك عفوا تحب العفو فعافنا واعفو عنا',
    'ربنا آتنا فى الدنيا حسنة وفى الاخرة حسنة وقنا عذاب النار',
  ];

  @override
  Widget build(BuildContext context) {
    var ProvSettings = Provider.of<ProviderSettings>(context);
    return Center(
      child: Column(
        children: [
          // Image.asset('assets/images/head_sebha_logo.png'),
          const SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  AppLocalizations.of(context)!.tsbeh,
                  style: TextStyle(
                    fontFamily: 'PlaypenSans',
                    color: ProvSettings.theme == ThemeMode.light
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  '$index',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: ProvSettings.theme == ThemeMode.light
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: MyTheme.MyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(10),
                child: Text(
                  tathbeh[num],
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                        fontFamily: 'PlaypenSans',
                        fontWeight: FontWeight.bold,
                      ),
                ),
                decoration: BoxDecoration(
                  color: MyTheme.MyColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                index++;
                if (index == 34) {
                  index = 0;
                  num++;
                  if (num == tathbeh.length) {
                    num = 0;
                  }
                }
                setState(() {});
              },
              icon: Image.asset('assets/images/body_sebha_logo.png'))
        ],
      ),
    );
  }
}
