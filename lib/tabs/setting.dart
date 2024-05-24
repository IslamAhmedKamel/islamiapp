import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quranapp/bottom_sheet_Mode.dart';
import 'package:quranapp/bottom_sheet_language.dart';
import 'package:quranapp/developer.dart';
import 'package:quranapp/providers/provider_settings.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    var ProvSettings = Provider.of<ProviderSettings>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: TextStyle(
              fontFamily: 'PlaypenSans',
              color: ProvSettings.theme == ThemeMode.light
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const BottomSheetLanguage(),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: ProvSettings.theme == ThemeMode.light
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              child: Text(
                ProvSettings.local == 'ar'
                    ? AppLocalizations.of(context)!.arabic
                    : AppLocalizations.of(context)!.english,
                style: TextStyle(
                  fontFamily: 'PlaypenSans',
                  color: ProvSettings.theme == ThemeMode.light
                      ? Colors.black
                      : Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            AppLocalizations.of(context)!.mode,
            style: TextStyle(
              fontFamily: 'PlaypenSans',
              color: ProvSettings.theme == ThemeMode.light
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const BottomSheetMode(),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: ProvSettings.theme == ThemeMode.light
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              child: Text(
                ProvSettings.theme == ThemeMode.light
                    ? AppLocalizations.of(context)!.modeLight
                    : AppLocalizations.of(context)!.modeDark,
                style: TextStyle(
                  fontFamily: 'PlaypenSans',
                  color: ProvSettings.theme == ThemeMode.light
                      ? Colors.black
                      : Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, DevelopInfo.routName);
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ProvSettings.theme == ThemeMode.light
                      ? Colors.black
                      : Colors.white,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(10),
              width: 300,
              child: Text(
                AppLocalizations.of(context)!.devApp,
                style: TextStyle(
                    color: ProvSettings.theme == ThemeMode.light
                        ? Colors.blue
                        : Colors.amber,
                    fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
//'assets/images/islam.jpg'
