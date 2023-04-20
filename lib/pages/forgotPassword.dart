import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPassword();
}

class _ForgotPassword extends State<ForgotPassword> {
  var mailController = TextEditingController();

  bool _obscureText1 = false;

  // bool _obscureText2 = true;
  // bool _obscureText3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          LocaleKeys.Password_change.tr(),
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
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03),
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                LocaleKeys.To_change_the.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'SourceSansPro',
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 5),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: TextFormField(
                    controller: mailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: LocaleKeys.Email_small.tr(),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
              //   child: SizedBox(
              //     width: 350,
              //     height: 50,
              //     child: TextFormField(
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(),
              //         hintText: "Новый пароль",
              //         suffixIcon: GestureDetector(
              //           onTap: () {
              //             setState(() {
              //               _obscureText2 = !_obscureText2;
              //             });
              //           },
              //           child: Icon(_obscureText2
              //               ? Icons.visibility
              //               : Icons.visibility_off),
              //         ),
              //       ),
              //       obscureText: _obscureText2,
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
              //   child: SizedBox(
              //     width: 350,
              //     height: 50,
              //     child: TextFormField(
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(),
              //         hintText: "Повторите пароль",
              //         suffixIcon: GestureDetector(
              //           onTap: () {
              //             setState(() {
              //               _obscureText3 = !_obscureText3;
              //             });
              //           },
              //           child: Icon(_obscureText3
              //               ? Icons.visibility
              //               : Icons.visibility_off),
              //         ),
              //       ),
              //       obscureText: _obscureText3,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(1, 103, 255, 1.0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)))),
                onPressed: () {
                  FirebaseAuth.instance
                      .sendPasswordResetEmail(email: mailController.text)
                      .then((value) => print('1'));
                },
                child: SizedBox(
                  width: 320,
                  height: 50,
                  child: Center(
                    child: Text(
                      LocaleKeys.Change_Password.tr(),
                      style: TextStyle(fontSize: 21),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
