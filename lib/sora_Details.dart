 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quranapp/soraModel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'my_theme.dart';

class SoraDetails extends StatefulWidget {
  static const String routName = 'soraDetails';

  @override
  State<SoraDetails> createState() => _SoraDetailsState();
}

class _SoraDetailsState extends State<SoraDetails> {
  String sora = '';
  List<String> soraContent = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as  SoraModel;
    if (soraContent.isEmpty) {
      loadFile(args.index);
    }
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
              'سورة ${args.soraName}',
              style: MyTheme.primaryStyle,
            ),
          ),
          body: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: const BorderSide(
                  color: Colors.transparent,
                )),
            elevation: 20,
            margin: const EdgeInsets.all(10),
            color: Colors.blueGrey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  itemBuilder: (context, index) => Text(
                    style: MyTheme.secondStyle,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    ' ${soraContent[index]} 🕋',
                  ),
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(color: Colors.white);
                  },
                  itemCount: soraContent.length,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  void loadFile(int index) async {
    sora = await rootBundle.loadString('assets/files/${index + 1}.txt');
    soraContent = sora.trim().split('\n');
     setState(() {});
  }
}
