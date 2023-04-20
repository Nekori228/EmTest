import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';

class news_three extends StatelessWidget {
  const news_three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          LocaleKeys.News.tr(),
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                if (context.locale == Locale('en')) {
                  context.setLocale(Locale('ru'));
                } else {
                  context.setLocale(Locale('en'));
                }
              },
              child: Icon(
                Icons.translate,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 430,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/news3_big.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.The_first_line.tr(),
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: LocaleKeys.Did_you.tr(),
                      style: TextStyle(
                          color: Colors.black, fontSize: 19, height: 1.3),
                      children: <TextSpan>[
                        TextSpan(
                            text: '\n\n' + LocaleKeys.Passwords.tr() + '\n\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: LocaleKeys.Create.tr()),
                        TextSpan(
                            text: '\n\n' + LocaleKeys.Updates.tr() + '\n\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: LocaleKeys.Update_the.tr()),
                        TextSpan(
                            text: '\n\nWi-Fi\n\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: LocaleKeys.Avoid.tr()),
                        TextSpan(
                            text: '\n\n' + LocaleKeys.Email.tr() + '\n\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                LocaleKeys.Email_is.tr()),
                        TextSpan(
                            text: '\n\n' + LocaleKeys.Security.tr(),
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 400,
              height: 210,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/news3_big.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
