import 'package:flutter/material.dart';
 import 'package:quranapp/hadeth_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({super.key});
  static const routName = 'hadethDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/default_bg.png',
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            args.name,
          ),
        ),
        body: Card(
          
          color: const Color.fromARGB(255, 146, 163, 172),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: ListView.builder(
              itemBuilder: (context, index) => Text(
                args.content[index],
                style: TextStyle(fontSize: 20),
              ),
              itemCount: args.content.length,
            ),
          ),
        ),
      ),
    );
  }
}
