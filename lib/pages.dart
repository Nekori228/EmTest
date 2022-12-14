import 'package:flutter/material.dart';

class news extends StatelessWidget {
  const news({Key? key}) : super(key: key);

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
                  Icons.language,
                  color: Colors.grey,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            news_info(),
            news_info(),
            news_info(),
            news_info(),
            news_info(),
          ],
        ),
      ),
    );
  }
}

class news_info extends StatelessWidget {
  const news_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 165,
            height: 120,
            child: Image.asset("assets/images/news_picture.png"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: SizedBox(
                width: 165,
                height: 120,
                child: Text('Информация о новости Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает...', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'SourceSansPro'))),
          )
        ],
      ),
    );
  }
}
