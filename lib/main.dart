import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/pages/home_screen.dart';
import 'package:emtest/pages/material.dart';
import 'package:emtest/pages/material_cont.dart';
import 'package:emtest/pages/news.dart';
import 'package:emtest/pages/office_page.dart';
import 'package:emtest/pages/tests_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'generated/codegen_loader.g.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ru')],
        path: 'assets/translation',
        fallbackLocale: Locale('en'),
        assetLoader: CodegenLoader(),
        child: MyApp()
    ),
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

  int _selectedPage = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    news(),
    material(),
    tests(),
    office()
  ];

  void onSelectTab(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
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
      },
      initialRoute: '/',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Scaffold(
        body: Center(
          child: _widgetOptions[_selectedPage],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: _selectedPage,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: 'Новости'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books_outlined),
                label: 'Материал'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.quiz_outlined),
                label: 'Тесты'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Кабинет'
            ),
          ],
          onTap: onSelectTab,
        ),
      ),
    );
  }
}

