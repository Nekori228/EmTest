import 'package:emtest/pages/news3.dart';
import 'package:flutter/material.dart';

import 'news1.dart';
import 'news2.dart';
import 'news4.dart';
import 'news5.dart';
import 'news6.dart';

class news extends StatefulWidget {
  const news({Key? key}) : super(key: key);

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Новости',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.translate,
                  color: Colors.grey,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => news_one()));
                },
                child: SizedBox(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/news1.png"),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: SizedBox(
                              child: RichText(
                                text: const TextSpan(
                                    style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        fontFamily: 'SourceSansPro'),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'С наступающим Новым 2023 годом!' +
                                                  '\n',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              'Дорогие коллеги, Каждый год, готовя новогоднее сообщение, я...')
                                    ]),
                              ),
                              // child: Text(
                              //   'С наступающим Новым 2023 годом! Дорогие коллеги, Каждый год, готовя новогоднее сообщение, я...',
                              //   textAlign: TextAlign.start,
                              //   style: TextStyle(
                              //       fontSize: 15,
                              //       letterSpacing: 0.5,
                              //       color: Colors.black,
                              //       fontWeight: FontWeight.w500,
                              //       fontFamily: 'SourceSansPro'),
                              // ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => news_two()));
                },
                child: SizedBox(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/news2.png"),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      fontFamily: 'SourceSansPro'),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Телефонное мошенничество.' + '\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            'Дорогие коллеги, Каждый год, готовя новогоднее сообщение, я...')
                                  ]),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => news_three()));
                },
                child: SizedBox(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/news3.png"),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      fontFamily: 'SourceSansPro'),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Первая линия защиты от кибератак – это вы.' +
                                                '\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            'Знаете ли вы, что причиной более 85% кибератак является...')
                                  ]),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => news_four()));
                },
                child: SizedBox(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/news4.png"),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      fontFamily: 'SourceSansPro'),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'ОТКРЫТЫЕ ТРЕНИНГИ' + '\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            'эффективная презентация в виртуальной реальности 13 апреля состоялась встреча...')
                                  ]),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => news_five()));
                },
                child: SizedBox(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/news5.png"),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      fontFamily: 'SourceSansPro'),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'INsport – спортивные онлайн-тренировки с коллегами' +
                                                '\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            'Больше месяца назад для всех сотрудников...')
                                  ]),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => news_six()));
                },
                child: SizedBox(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/news6.png"),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child:
                            RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      fontFamily: 'SourceSansPro'),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                        'Bershka, Pull&Bear и Zara вернутся в Россию' +
                                            '\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                        'В апреле Бренды ушедшей с российского рынка испанской фэшн...')
                                  ]),
                            ),
                          ),
                        )
                      ],
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
