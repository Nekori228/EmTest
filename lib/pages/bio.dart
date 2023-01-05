import 'package:flutter/material.dart';

import 'intro_test.dart';

class bio_info extends StatelessWidget {
  const bio_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          'Личные данные',
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
              SizedBox(
                width: 350,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Пол', style: TextStyle(fontSize: 17)),
                    Text('Женский', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 350,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Дата рождения', style: TextStyle(fontSize: 17)),
                    Text('02/08/2003', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 350,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Место проживания', style: TextStyle(fontSize: 17)),
                    Text('г.Сургут мира 1', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 350,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Компания', style: TextStyle(fontSize: 17)),
                    Text('PULL AND BEAR CIS LIMITED',
                        style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 350,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Дата приёма', style: TextStyle(fontSize: 17)),
                    Text('13/10/2021', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 350,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Электронная почта', style: TextStyle(fontSize: 17)),
                    Text('sofyaro@indetex.com', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 350,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Мобильный телефон', style: TextStyle(fontSize: 17)),
                    Text('89223284859', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
            ],
          ),
        ),
      ),
    );
  }
}
