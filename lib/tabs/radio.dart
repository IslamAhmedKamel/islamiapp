import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quranapp/providers/provider_settings.dart';

import '../my_theme.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ProvSettings = Provider.of<ProviderSettings>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/radio_image.png'),
          Text(
            AppLocalizations.of(context)!.radioHoly,
            style: TextStyle(
              fontFamily: 'PlaypenSans',
              color: ProvSettings.theme == ThemeMode.light
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  tooltip: "السابق",
                  icon: Icon(
                    Icons.navigate_before_rounded,
                    color: MyTheme.MyColor,
                    size: 60,
                  )),
              IconButton(
                  onPressed: () {},
                  tooltip: 'توقف الراديو',
                  icon: Icon(
                    Icons.stop_circle_outlined,
                    color: MyTheme.MyColor,
                    size: 60,
                  )),
              IconButton(
                  onPressed: () {},
                  tooltip: ' التالى',
                  icon: Icon(
                    Icons.navigate_next,
                    color: MyTheme.MyColor,
                    size: 60,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
