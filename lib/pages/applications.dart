import 'package:flutter/material.dart';

class applications extends StatelessWidget {
  const applications
({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          'Заявки',
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
              SizedBox(
                width: 350,
                height: 125,
                child: TextField(decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Сообщение",
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

