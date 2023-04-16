import 'package:flutter/material.dart';

class history extends StatelessWidget {
  const history({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          'История',
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
              correctAnswer(),
              correctAnswer(),
              correctAnswer(),
            ],
          ),
        ),
      ),
    );
  }
}

class correctAnswer extends StatelessWidget {
  const correctAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Row(
        children: [
          Container(
            child: Text(
              '01',
              style: TextStyle(
                  color: Color(0xFFB5B5B5),
                  fontFamily: 'SourceSansPro',
                  fontSize: 20),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: Text(
                  'Контрольный тест',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontFamily: 'SourceSansPro',
                      fontSize: 21),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                child: Text(
                  'правильные ответы - 15',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class uncorrectAnswer extends StatelessWidget {
  const uncorrectAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
