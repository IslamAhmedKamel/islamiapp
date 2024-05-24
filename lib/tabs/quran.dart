import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quranapp/providers/provider_settings.dart';

import '../my_theme.dart';
import '../soraModel.dart';
import '../sora_Details.dart';

class QuranTab extends StatelessWidget {
  List<String> soraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var ProvSettings = Provider.of<ProviderSettings>(context);
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/qur2an_screen_logo.png'),
          const Divider(
            thickness: 4,
            color: MyTheme.MyColor,
          ),
          Text(
            AppLocalizations.of(context)!.suraName,
            style: TextStyle(
              fontFamily: 'PlaypenSans',
              color: ProvSettings.theme == ThemeMode.light
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          const Divider(
            thickness: 4,
            color: MyTheme.MyColor,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      SoraDetails.routName,
                      arguments: SoraModel(
                        soraName[index],
                        index,
                      ),
                    );
                  },
                  child: Text(
                    soraName[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: ProvSettings.theme == ThemeMode.light
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                color: MyTheme.MyColor,
                thickness: 1,
                indent: 40,
                endIndent: 40,
              ),
              itemCount: soraName.length,
            ),
          ),
        ],
      ),
    );
  }
}
