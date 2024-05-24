import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quranapp/providers/provider_settings.dart';

class BottomSheetLanguage extends StatelessWidget {
  const BottomSheetLanguage({super.key});

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
                ProvSettings.changeLanguage('en');
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.english,
                      style: TextStyle(
                        fontFamily: 'PlaypenSans',
                        color: ProvSettings.local == 'en'
                            ? Colors.amber
                            : Colors.white,
                      ),
                    ),
                    ProvSettings.local == 'en'
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
                ProvSettings.changeLanguage('ar');
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.arabic,
                      style: TextStyle(
                        fontFamily: 'PlaypenSans',
                        color: ProvSettings.local == 'ar'
                            ? Colors.amber
                            : Colors.white,
                      ),
                    ),
                    ProvSettings.local == 'ar'
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
