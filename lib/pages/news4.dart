import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';

class news_four extends StatelessWidget {
  const news_four({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/news4_big.png'),
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
                    LocaleKeys.OPEN_TRAININGS.tr(),
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: LocaleKeys.On_April.tr(),
                      style: TextStyle(
                          color: Colors.black, fontSize: 19, height: 1.3),
                      children: <TextSpan>[
                        TextSpan(
                            text: LocaleKeys.Open_trainings.tr(),
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: LocaleKeys.Diana.tr() + '\n\n'),
                        TextSpan(text: LocaleKeys.The_training.tr()),
                        TextSpan(
                            text: LocaleKeys.of.tr(),
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: '\n\n' + LocaleKeys.The_next.tr()),
                        TextSpan(
                            text: LocaleKeys.Effective.tr(),
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: LocaleKeys.Will.tr()),
                        TextSpan(
                            text: LocaleKeys.Oksana.tr(),
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(
                          text: '\n\n' + LocaleKeys.Oksana_will.tr(),
                        ),
                        TextSpan(
                          text: '\n' + LocaleKeys.Oksana_will.tr(),
                        ),
                        TextSpan(
                          text: '\n' + LocaleKeys.importance.tr(),
                        ),
                        TextSpan(
                          text: '\n' + LocaleKeys.gestures.tr(),
                        ),
                        TextSpan(
                          text: '\n' + LocaleKeys.features.tr(),
                        ),
                        TextSpan(
                          text: '\n' + LocaleKeys.technical.tr() + '\n',
                        ),
                        TextSpan(
                          text: '\n' + LocaleKeys.To_register.tr() + '\n',
                        ),
                        TextSpan(
                          text: '\n' + LocaleKeys.A_link.tr() + '\n',
                        ),
                        TextSpan(
                            text: '\n' + LocaleKeys.Do_not.tr() + '\n',
                            style: TextStyle(fontWeight: FontWeight.w500)),
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
                  image: AssetImage('assets/images/news4_big.png'),
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
