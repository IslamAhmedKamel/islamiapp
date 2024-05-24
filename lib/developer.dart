import 'package:flutter/material.dart';

class DevelopInfo extends StatelessWidget {
  const DevelopInfo({super.key});

  static const String routName = 'dvInfo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2B475E),
        title: const Text(
          'Developer Flutter',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico',
            fontSize: 30,
          ),
        ),
      ),
      backgroundColor: const Color(0xff2B475E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 121,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage(
                'assets/images/islamimage.jpg',
              ),
            ),
          ),
          const Divider(
            color: Colors.white,
            height: 2,
            indent: 60,
            endIndent: 60,
            thickness: .4,
          ),
          const Text(
            'Islam Ahmed',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w100,
              fontFamily: 'PlaypenSans',
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: const Row(
              children: [
                Icon(
                  Icons.phone,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '01154562919',
                  style: TextStyle(
                    fontFamily: 'PlaypenSans',
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'islamahmedkamel592@gmail.com',
                  style: TextStyle(
                    fontFamily: 'PlaypenSans',
                    fontSize: 19,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
