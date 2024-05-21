import 'package:flutter/material.dart';

import '../my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
          Image.asset('assets/images/radio_image.png'),
          Text( 
            AppLocalizations.of(context)!.radioHoly,
            style: MyTheme.secondStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed:  (){},
                  tooltip: "السابق",
                  icon:Icon(Icons.navigate_before_rounded,color: MyTheme.MyColor,size: 60,)),
              IconButton(onPressed:  (){},
                  tooltip: 'توقف الراديو',
                  icon:Icon(Icons.stop_circle_outlined,color: MyTheme.MyColor,size: 60,)),
              IconButton(onPressed:  (){},
                  tooltip: ' التالى',
                  icon:Icon(Icons.navigate_next,color: MyTheme.MyColor,size: 60,)),


            ],
          ),
        ],
      ),
    );
  }
}
