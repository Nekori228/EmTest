import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

dynamic prefs;

int selectedPage = 0;


var user = {};

void initPrefs() async {
  prefs = await SharedPreferences.getInstance();
}

void showLoading(context) {
  showDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            CircularProgressIndicator(
              color: Colors.grey,
            )
          ]));
    },
  );
}