import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';

class result extends StatelessWidget {
  final int count;
  final int total;
  final String name;
  final onClearState;

  result({Key? key, required this.count, required this.total, required this.name, required this.onClearState}) : super(key: key);

  void saveResult() {
    if (prefs.getString('listTestsResult') == null) {
      prefs.setString(
          'listTestsResult',
          jsonEncode({
            '1': {'name': this.name, 'success_count': count}
          }));
    } else {
      var result = jsonDecode(prefs.getString('listTestsResult'));
      result[(int.parse(result.keys.toList().last) + 1).toString()] = {'name': this.name, 'success_count': count};
      prefs.setString('listTestsResult', jsonEncode(result));
    }
  }

  @override
  Widget build(BuildContext context) {
    String msg = '';

    if (0 <= count && count <= 3) {
      msg = LocaleKeys.You_failed.tr();
      saveResult();
    } else if ((2 <= count && count <= 7)) {
      msg = LocaleKeys.You_have_passed.tr();
      saveResult();
    }
    return Column(
      children: [
        SizedBox(height: 100),
        Text(
          msg,
          style: TextStyle(color: Colors.black, fontSize: 26, fontFamily: 'SourceSansPro'),
        ),
        Text(
          LocaleKeys.Number_of_correct_answers.tr() + ' $count',
          style: TextStyle(color: Colors.black, fontSize: 22, fontFamily: 'SourceSansPro'),
        ),
        SizedBox(height: 50),
        Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(1, 103, 255, 1.0)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: onClearState,
            child: SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  LocaleKeys.Take_the_test_again.tr(),
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 25),
        Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(1, 103, 255, 1.0)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  LocaleKeys.Go_to_the_list_of_tests.tr(),
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
