import 'package:flutter/material.dart';

import 'intro_test.dart';

class date extends StatelessWidget {
  const date({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
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
                  children: [
                    Icon(Icons.picture_as_pdf),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text('Октябрь - расчётный лист'),
                    ),
                    Text('10/11/2022'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.picture_as_pdf),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text('Октябрь - расчётный лист'),
                    ),
                    Text('10/11/2022'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.picture_as_pdf),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text('Октябрь - расчётный лист'),
                    ),
                    Text('10/11/2022'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.picture_as_pdf),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text('Октябрь - расчётный лист'),
                    ),
                    Text('10/11/2022'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.picture_as_pdf),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text('Октябрь - расчётный лист'),
                    ),
                    Text('10/11/2022'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.picture_as_pdf),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text('Октябрь - расчётный лист'),
                    ),
                    Text('10/11/2022'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.picture_as_pdf),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text('Октябрь - расчётный лист'),
                    ),
                    Text('10/11/2022'),
                  ],
                ),
              ),
              block_grey(),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.picture_as_pdf),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text('Октябрь - расчётный лист'),
                    ),
                    Text('10/11/2022'),
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
