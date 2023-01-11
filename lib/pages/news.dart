import 'package:emtest/pages/news3.dart';
import 'package:flutter/material.dart';

import 'news1.dart';
import 'news2.dart';
import 'news4.dart';

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
                  width: 350,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          height: 120,
                          child: Image.asset("assets/images/news1.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: SizedBox(
                            width: 155,
                            height: 95,
                            child: Text(
                              'С наступающим Новым 2023 годом! Дорогие коллеги, Каждый год, готовя новогоднее сообщение, я...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'SourceSansPro'),
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
                  width: 350,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          height: 120,
                          child: Image.asset("assets/images/news2.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: SizedBox(
                            width: 155,
                            height: 95,
                            child: Text(
                              'Телефонное мошенничество. Мы живем в эру технологий, и это огромное поле для...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'SourceSansPro'),
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
                  width: 350,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          height: 120,
                          child: Image.asset("assets/images/news3.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: SizedBox(
                            width: 155,
                            height: 95,
                            child: Text(
                              'Первая линия защиты от кибератак – это вы. Знаете ли вы, что причиной более 85% кибератак является...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'SourceSansPro'),
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
                  width: 350,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          height: 120,
                          child: Image.asset("assets/images/news4.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: SizedBox(
                            width: 155,
                            height: 95,
                            child: Text(
                              'ОТКРЫТЫЕ ТРЕНИНГИ: эффективная презентация в виртуальной реальности 13 апре...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'SourceSansPro'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              news_info(),
              news_info(),
              news_info(),
            ],
          ),
        ),
      ),
    );
  }
}

class news_info extends StatelessWidget {
  const news_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        elevation: MaterialStateProperty.all(0),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => news_one()));
      },
      child: SizedBox(
        width: 350,
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 140,
                height: 120,
                child: Image.asset("assets/images/news_picture.png"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: SizedBox(
                  width: 155,
                  height: 95,
                  child: Text(
                    'Информация о новости Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает...',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SourceSansPro'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
