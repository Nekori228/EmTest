import 'package:flutter/material.dart';

class intro_test extends StatelessWidget {
  const intro_test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          '1 программа для право..',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.language,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            block_test(),
            block_grey(),
            block_test(),
          ],
        ),
      ),
    );
  }
}

class block_test extends StatelessWidget {
  const block_test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 80,
      child: Row(
        children: [
          Text('01', style: TextStyle(color: Colors.grey, fontSize: 15)),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text(
                  'Контрольный тест',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 50, 0),
                child: Text('122 вопроса',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class block_grey extends StatelessWidget {
  const block_grey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 1,
      color: Colors.grey,
    );
  }
}

