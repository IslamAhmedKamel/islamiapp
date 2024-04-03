import 'package:flutter/material.dart';
import 'package:quranapp/my_theme.dart';

import 'hadeth_model.dart';

class HadethDetails extends StatelessWidget {
 static const String routName='hadethDatails';
  @override
  Widget build(BuildContext context) {
    var ages=ModalRoute.of(context)?.settings.arguments as HadethModel;
    return  Stack(
      children:[
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
        appBar: AppBar(
          title: Text(ages.title),
        ),
          body: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              side: const BorderSide(
                color: Colors.transparent,
                )),
            elevation: 20,
            margin: EdgeInsets.all(10),
          color: Colors.blueGrey,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                  style: MyTheme.secondStyle,
                  textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    ' ${ages.content[index]}',
                  ),
                  itemCount: ages.content.length,
                ),
              ),
            ),
          ),
      ),

      ]
    );
  }
}
