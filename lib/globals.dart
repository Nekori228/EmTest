import 'package:shared_preferences/shared_preferences.dart';

dynamic prefs;

int selectedPage = 0;


var user = {};

void initPrefs() async {
  prefs = await SharedPreferences.getInstance();
}