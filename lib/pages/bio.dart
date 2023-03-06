import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:emtest/globals.dart';
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
                    Text(user['Пол'], style: TextStyle(fontSize: 15)),
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
                    Text('${(user['Дата рождения'] as Timestamp).toDate().day.toString()}.${(user['Дата рождения'] as Timestamp).toDate().month
                        .toString()}.${(user['Дата рождения'] as Timestamp).toDate().year.toString()}', style: TextStyle(fontSize: 15)),
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
                    Text(user['Место проживания'], style: TextStyle(fontSize: 15)),
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
                    Text(user['Компания'],
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
                    Text('${(user['Дата приёма'] as Timestamp).toDate().day.toString()}.${(user['Дата приёма'] as Timestamp).toDate().month
                        .toString()}.${(user['Дата приёма'] as Timestamp).toDate().year.toString()}', style: TextStyle(fontSize: 15)),
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
                    Text(user['Адрес электронной почты'], style: TextStyle(fontSize: 15)),
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
                    Text(user['Мобильный телефон'].toString(), style: TextStyle(fontSize: 15)),
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
