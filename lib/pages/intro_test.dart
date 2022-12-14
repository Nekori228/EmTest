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
              block_test(),
              block_grey(),
              block_test(),
              block_grey(),
              block_test(),
              block_grey(),
              block_test(),
              block_grey(),
              block_test(),
              block_grey(),
              block_test(),
              block_grey(),
              block_test(),
              block_grey(),
              block_test(),
            ],
          ),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Text('01', style: TextStyle(color: Colors.grey, fontSize: 15)),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 2),
                child: Text(
                  'Контрольный тест',
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 50, 0),
                child: Text('122 вопроса',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
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
      width: 360,
      height: 1,
      color: Colors.grey,
    );
  }
}

