import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/main.dart';
import 'package:emtest/pages/change_password.dart';
import 'package:emtest/pages/finansal_date.dart';
import 'package:emtest/pages/history.dart';
import 'package:emtest/pages/sale_card.dart';
import 'package:emtest/pages/test_file.dart';
import 'package:emtest/pages/tests_page.dart';
import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';

import '../generated/locale_keys.g.dart';
import '../globals.dart';
import 'applications.dart';
import 'bio.dart';
import 'intro_test.dart';
import 'material_contant_page1.dart';

class office extends StatelessWidget {
  const office({Key? key}) : super(key: key);

  void onSelectTab(int index) {
    if (selectedPage == index) return;
    selectedPage = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            acc_photo(),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => bio_info()));
                },
                child: SizedBox(
                  width: 400,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Icon(Icons.account_box),
                          ),
                          Text(
                            LocaleKeys.Personal_data.tr(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                ),
              ),
            ),
            block_grey(),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => sale_card()));
                },
                child: SizedBox(
                  width: 400,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Icon(Icons.credit_card),
                          ),
                          Text(
                            LocaleKeys.Discount_card.tr(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                ),
              ),
            ),
            block_grey(),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => date()));
                },
                child: SizedBox(
                  width: 400,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Icon(Icons.account_balance_outlined),
                          ),
                          Text(
                            LocaleKeys.My_financia_data.tr(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                ),
              ),
            ),
            block_grey(),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => applications()));
                },
                child: SizedBox(
                  width: 400,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Icon(Icons.settings_applications_outlined),
                          ),
                          Text(
                            LocaleKeys.Applications.tr(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                ),
              ),
            ),
            block_grey(),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => history()));
                },
                child: SizedBox(
                  width: 400,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Icon(Icons.history),
                          ),
                          Text(
                            LocaleKeys.History.tr(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                ),
              ),
            ),
            block_grey(),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => password_change()));
                },
                child: SizedBox(
                  width: 400,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Icon(Icons.password),
                          ),
                          Text(
                            LocaleKeys.Password_change.tr(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                ),
              ),
            ),
            block_grey(),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  prefs.remove('user');
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: SizedBox(
                  width: 400,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Icon(Icons.logout),
                          ),
                          Text(
                            LocaleKeys.Exit.tr(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                ),
              ),
            ),
            block_grey(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.blue,
      //   currentIndex: selectedPage,
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.newspaper), label: 'Новости'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.library_books_outlined), label: 'Материал'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.quiz_outlined), label: 'Тесты'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.account_circle_outlined), label: 'Кабинет'),
      //   ],
      //   onTap: onSelectTab,
      // ),
    );
  }
}

class acc_photo extends StatefulWidget {
  const acc_photo({Key? key}) : super(key: key);

  @override
  State<acc_photo> createState() => _acc_photoState();
}

class _acc_photoState extends State<acc_photo> {
  Future getImage() async {
    await ImagesPicker.pick(
      count: 1,
      pickType: PickType.image,
    ).then((value) {
      setState(() {
        prefs.setString('avatar', value?.first.path.toString());
        print(value?.first.path.toString());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getImage();
      },
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: prefs.getString('avatar') != null ? FileImage(File(prefs.getString('avatar'))) : AssetImage('assets/images/no_avatar.png') as ImageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
