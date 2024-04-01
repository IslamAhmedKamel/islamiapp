 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../hadeth_Details.dart';
import '../hadeth_model.dart';
import '../my_theme.dart';
class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/hadeth_logo.png'),
          Divider(
            color: MyTheme.MyColor,
            thickness: 2,
          ),
          Text('الأحاديث'),
          Divider(
            color: MyTheme.MyColor,
            thickness: 2,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(context,HadethDetails.routName,arguments: allAhadeth[index] );
                  },
                  child: Text(allAhadeth[index].title,
                    textAlign: TextAlign.center  ,),
                ),
                separatorBuilder: (context, index) => const Divider(
                      thickness: 1,
                      indent: 40,
                      endIndent: 40,
                      color: MyTheme.MyColor,
                    ),
                itemCount: allAhadeth.length,

            ),
          ),
        ],
      ),
    );
  }
  void loadHadeth() async {
    rootBundle.loadString('assets/files/ahadeth.txt').then((ahadeth) {
      List<String> ahadethList = ahadeth.split('#');
      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethOneLins = hadethOne.trim().split('\n');
        String title = hadethOneLins[0];
        hadethOneLins.removeAt(0);
        List<String> content = hadethOneLins;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
      }
      setState(() {});
    });
    // soraContent = sora.trim().split('\n');
    // setState(() {});
  }
}
