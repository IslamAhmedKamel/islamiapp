import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quranapp/providers/provider_settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomSheetMode extends StatelessWidget {
  const BottomSheetMode({super.key});

  @override
  Widget build(BuildContext context) {
    var ProvSettings = Provider.of<ProviderSettings>(context);

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                ProvSettings.changemode(ThemeMode.light);
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.modeLight,
                      style: TextStyle(
                        fontFamily: 'PlaypenSans',
                        color: ProvSettings.theme == ThemeMode.light
                            ? Colors.amber
                            : Colors.white,
                      ),
                    ),
                    ProvSettings.theme == ThemeMode.light
                        ? Icon(
                            Icons.done,
                            color: Colors.amber,
                          )
                        : SizedBox.shrink(),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                ProvSettings.changemode(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.modeDark,
                      style: TextStyle(
                        fontFamily: 'PlaypenSans',
                        color: ProvSettings.theme == ThemeMode.dark
                            ? Colors.amber
                            : Colors.white,
                      ),
                    ),
                    ProvSettings.theme == ThemeMode.dark
                        ? Icon(
                            Icons.done,
                            color: Colors.amber,
                          )
                        : SizedBox.shrink(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
