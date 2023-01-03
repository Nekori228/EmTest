import 'package:emtest/pages/intro_test.dart';
import 'package:flutter/material.dart';

import 'info_regist.dart';

class tests extends StatelessWidget {
  const tests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Тесты',
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
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              tests_block(),
              tests_block(),
              tests_block(),
              tests_block(),
              tests_block(),
              tests_block(),
              tests_block(),
              tests_block(),
            ],
          ),
        ),
      ),
    );
  }
}

class tests_block extends StatelessWidget {
  const tests_block({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => intro_test()));
        },
          child: SizedBox(
            width: 380,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
                  child: Text(
                    '1 программа для правоохраненительной службы',
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    '1248 вопросов',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
