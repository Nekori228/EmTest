import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';
import '../globals.dart';

class history extends StatelessWidget {
  const history({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          LocaleKeys.History.tr(),
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
        child: Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "0" + index.toString(),
                        style: TextStyle(
                            color: Color(0xFFB5B5B5),
                            fontFamily: 'SourceSansPro',
                            fontSize: 20),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 0, 10),
                          child: Text(
                            jsonDecode(prefs.getString('listTestsResult'))[
                                (index + 1).toString()]['name'],
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontFamily: 'SourceSansPro',
                                fontSize: 21),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Text(
                            'правильные ответы - ' +
                                jsonDecode(prefs.getString('listTestsResult'))[
                                        (index + 1).toString()]['success_count']
                                    .toString(),
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
            itemCount: prefs.getString('listTestsResult') == null ? 0 : jsonDecode(prefs.getString('listTestsResult')).length,
            shrinkWrap: true,
            // itemCount: jsonDecode(prefs.getString('listTestsResult')).keys.toList().length,
          ),
        ),
      ),
    );
  }
}

class correctAnswer extends StatelessWidget {
  const correctAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Row(
        children: [
          Container(
            child: Text(
              '01',
              style: TextStyle(
                  color: Color(0xFFB5B5B5),
                  fontFamily: 'SourceSansPro',
                  fontSize: 20),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: Text(
                  'Контрольный тест',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontFamily: 'SourceSansPro',
                      fontSize: 21),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                child: Text(
                  'правильные ответы - 15',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class uncorrectAnswer extends StatelessWidget {
  const uncorrectAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
