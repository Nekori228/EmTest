import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:emtest/globals.dart';
import '../generated/locale_keys.g.dart';
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
          LocaleKeys.Personal_data.tr(),
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  if (context.locale == Locale('en')) {
                    context.setLocale(Locale('ru'));
                  } else {
                    context.setLocale(Locale('en'));
                  }
                },
                child: Icon(
                  Icons.translate,
                  color: Colors.grey,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.Gender.tr(), style: TextStyle(fontSize: 17)),
                    Text(user['Пол'], style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              Container(
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.Date_of_birth.tr(), style: TextStyle(fontSize: 17)),
                    Text(
                        '${(user['Дата рождения'] as Timestamp).toDate().day.toString().length == 1 ? '0' + (user['Дата рождения'] as Timestamp).toDate().day.toString() : (user['Дата рождения'] as Timestamp).toDate().day.toString()}.'
                        '${(user['Дата рождения'] as Timestamp).toDate().month.toString().length == 1 ? '0' + (user['Дата рождения'] as Timestamp).toDate().month.toString() : (user['Дата рождения'] as Timestamp).toDate().month.toString()}.${(user['Дата рождения'] as Timestamp).toDate().year.toString()}',
                        style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              Container(
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text(LocaleKeys.Place_of_residence.tr(), style: TextStyle(fontSize: 17))),
                    Text(user['Место проживания'], style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              Container(
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.Company.tr(), style: TextStyle(fontSize: 17)),
                    Text(user['Компания'], style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              Container(
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.Date_of_admission.tr(), style: TextStyle(fontSize: 17)),
                    Text(
                        '${(user['Дата приёма'] as Timestamp).toDate().day.toString().length == 1 ? '0' + (user['Дата приёма'] as Timestamp).toDate().day.toString() : (user['Дата приёма'] as Timestamp).toDate().day.toString()}.'
                        '${(user['Дата приёма'] as Timestamp).toDate().month.toString().length == 1 ? '0' + (user['Дата приёма'] as Timestamp).toDate().month.toString() : (user['Дата приёма'] as Timestamp).toDate().month.toString()}.${(user['Дата приёма'] as Timestamp).toDate().year.toString()}',
                        style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              Container(
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.Email_small.tr(), style: TextStyle(fontSize: 17)),
                    Text(user['Адрес электронной почты'], style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              block_grey(),
              Container(
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.Mobile_phone.tr(), style: TextStyle(fontSize: 17)),
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
