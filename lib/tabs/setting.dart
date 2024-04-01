import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            elevation: 3,
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                     child:Text(
                      'islam ahmed',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    margin: EdgeInsets.all(15),
                  ),
                  Container(
                    child: Icon(Icons.account_circle),
                    margin: EdgeInsets.all(5),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            elevation: 12,
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Log Out',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  Icon(
                    Icons.logout,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ),
          Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '01154562919',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.phone,
                    size: 30,
                  )
                ],
              ),
              Text('للتواصل مع مطور البرنامج',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 12, fontWeight: FontWeight.w900)),
            ],
          )
        ],
      ),
    );
  }
}
//'assets/images/islam.jpg'
