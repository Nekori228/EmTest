import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/globals.dart';
import 'package:emtest/pages/intro_test.dart';
import 'package:emtest/pages/test_page_five.dart';
import 'package:emtest/pages/test_page_four.dart';
import 'package:emtest/pages/test_page_one.dart';
import 'package:emtest/pages/test_page_six.dart';
import 'package:emtest/pages/test_page_three.dart';
import 'package:emtest/pages/test_page_two.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';
import 'info_regist.dart';
import 'login_screen.dart';

class tests extends StatelessWidget {
  const tests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          LocaleKeys.Tests.tr(),
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
          child: Column(
            children: [tests_block1(), tests_block2(), tests_block3(), tests_block4(), tests_block5(), tests_block6()],
          ),
        ),
      ),
    );
  }
}

class tests_block1 extends StatelessWidget {
  const tests_block1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: Colors.grey))),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          if (prefs.getString('isAuth') == "1") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => quiz_one())); //LoginScreen}
          }
        },
        child: SizedBox(
          width: 380,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 15, 20),
                child: Text(
                  LocaleKeys.Cashiers_minimums.tr(),
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 20),
                child: Text(
                  '7 ' + LocaleKeys.question.tr(),
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class tests_block2 extends StatelessWidget {
  const tests_block2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: Colors.grey))),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          if (prefs.getString('isAuth') == "1") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => quiz_two())); //LoginScreen
          }
        },
        child: SizedBox(
          width: 380,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 15, 20),
                child: Text(
                  LocaleKeys.Safety_standards_Cash_zone.tr(),
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 20),
                child: Text(
                  '7 ' + LocaleKeys.question.tr(),
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class tests_block3 extends StatelessWidget {
  const tests_block3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: Colors.grey))),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          if (prefs.getString('isAuth') == "1") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => quiz_three())); //LoginScreen
          }
        },
        child: SizedBox(
          width: 380,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 15, 20),
                child: Text(
                  LocaleKeys.Safety_standards_Alarms.tr(),
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 20),
                child: Text(
                  '4 ' + LocaleKeys.question.tr(),
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class tests_block4 extends StatelessWidget {
  const tests_block4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: Colors.grey))),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          if (prefs.getString('isAuth') == "1") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => quiz_four())); //LoginScreen
          }
        },
        child: SizedBox(
          width: 380,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 15, 20),
                child: Text(
                  LocaleKeys.Safety_standards_Cash_operations.tr(),
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 20),
                child: Text(
                  '7 ' + LocaleKeys.question.tr(),
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class tests_block5 extends StatelessWidget {
  const tests_block5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: Colors.grey))),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          if (prefs.getString('isAuth') == "1") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => quiz_five())); //LoginScreen
          }
        },
        child: SizedBox(
          width: 380,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 15, 20),
                child: Text(
                  LocaleKeys.Safety_standards_Safe_deposit.tr(),
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 20),
                child: Text(
                  '5 ' + LocaleKeys.question.tr(),
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class tests_block6 extends StatelessWidget {
  const tests_block6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: Colors.grey))),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          if (prefs.getString('isAuth') == "1") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => quiz_six())); //LoginScreen
          }
        },
        child: SizedBox(
          width: 380,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 15, 20),
                child: Text(
                  LocaleKeys.Technical_problems.tr(),
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 20),
                child: Text(
                  '4 ' + LocaleKeys.question.tr(),
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}