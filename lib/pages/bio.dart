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
                width: 300,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Пол'),
                    Text('Женский'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Дата рождения'),
                    Text('02/08/2003'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Место проживания'),
                    Text('г.Сургут мира 1'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Компания'),
                    Text('PULL AND BEAR CIS LIMITED'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Дата приёма'),
                    Text('13/10/2021'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Электронная почта'),
                    Text('sofyaro@indetex.com'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Мобильный телефон'),
                    Text('89223284859'),
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