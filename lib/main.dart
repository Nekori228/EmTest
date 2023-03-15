import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/pages/change_password.dart';
import 'package:emtest/pages/home_screen.dart';
import 'package:emtest/pages/login_screen.dart';
import 'package:emtest/pages/material.dart';
import 'package:emtest/pages/news.dart';
import 'package:emtest/pages/office_page.dart';
import 'package:emtest/pages/tests_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'globals.dart';

import 'firebase_options.dart';
import 'generated/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  initPrefs();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ru')],
        path: 'assets/translation',
        fallbackLocale: Locale('en'),
        assetLoader: CodegenLoader(),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return bottomNavigation();
  }
}

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({Key? key}) : super(key: key);

  @override
  State<bottomNavigation> createState() => _pagesState();
}

class _pagesState extends State<bottomNavigation> {
  static final List<Widget> _widgetOptions = <Widget>[
    news(),
    material(),
    tests(),
    prefs.getString('user') == null ? LoginScreen() : office()
  ];

  void onSelectTab(int index) {
    if (selectedPage == index) return;
    setState(() {
      selectedPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    getProfile();
  }

  void getProfile() async {
    for (var i = 1; i < 6; i++) {
      var collection = FirebaseFirestore.instance
          .collection('Perconal_info')
          .doc('Personal_date')
          .collection('Person$i');
      collection.get().then((value) {
        user[value.docs.first.data()['Адрес электронной почты']] =
            value.docs.first.data();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/reset_password': (context) => password_change(),
      },
      initialRoute: '/',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Scaffold(
        body: Center(
          child: _widgetOptions[selectedPage],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: selectedPage,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper), label: 'Новости'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books_outlined), label: 'Материал'),
            BottomNavigationBarItem(
                icon: Icon(Icons.quiz_outlined), label: 'Тесты'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Кабинет'),
          ],
          onTap: onSelectTab,
        ),
      ),
    );
  }
}
