import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class translate extends StatelessWidget {
  const translate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
        leading: IconButton(
          icon: Icon(Icons.language),
          onPressed: () {
            context.setLocale(Locale('en'));
          },
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                context.setLocale(Locale('ru'));
              },
              child: Icon(
                Icons.translate,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Translate'.tr(),
              style: TextStyle(fontSize: 50),
            ),
          ),
          PasswordField(
            color: Colors.blue,
            passwordConstraint: r'.*[@$#.*].*',
            inputDecoration: PasswordDecoration(),
            border: PasswordBorder(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue.shade100,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue.shade100,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
