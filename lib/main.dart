import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/pages/change_password.dart';
import 'package:emtest/pages/forgotPassword.dart';
import 'package:emtest/pages/home_screen.dart';
import 'package:emtest/pages/login_screen.dart';
import 'package:emtest/pages/material.dart';
import 'package:emtest/pages/news.dart';
import 'package:emtest/pages/office_page.dart';
import 'package:emtest/pages/tests_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'generated/locale_keys.g.dart';
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
        fallbackLocale: Locale('ru'),
        assetLoader: CodegenLoader(),
        child: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<ListResult> futureFiles;

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseStorage.instance.ref('/Financial_data').listAll();
    removeInit();
  }

  void removeInit() {
    prefs.remove('isAuth');
  }

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


  @override
  void initState() {
    super.initState();
    getProfile();
  }

  void getProfile() async {
    for (var i = 1; i < 6; i++) {
      var collection = FirebaseFirestore.instance.collection('Perconal_info').doc('Personal_date').collection('Person$i');
      collection.get().then((value) {
        user[value.docs.first.data()['Адрес электронной почты']] = value.docs.first.data();
      });
    }
  }

  void onSelectTab(int index) {
    if (selectedPage == index) return;
    setState(() {
      selectedPage = index;
    });
  }

  setStateKtp() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = <Widget>[news(), material(), tests(), prefs.getString('isAuth') == null ? LoginScreen() : office()];
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
        '/forgot_password': (context) => ForgotPassword(),
      },
      initialRoute: '/',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: StatefulBuilder(
        builder: (context, setStateObject) {
          callbackSetStateKtp = setStateObject;
          return Scaffold(
            body: Center(
              child: _widgetOptions[selectedPage],
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.blue,
              currentIndex: selectedPage,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: LocaleKeys.News.tr()),
                BottomNavigationBarItem(icon: Icon(Icons.library_books_outlined), label: LocaleKeys.Material.tr()),
                BottomNavigationBarItem(icon: Icon(Icons.quiz_outlined), label: LocaleKeys.Tests.tr()),
                BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: LocaleKeys.Profile.tr()),
              ],
              onTap: onSelectTab,
            ),
          );
        }
      ),
    );
  }
}
