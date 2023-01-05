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
              pdf_block(),
              block_grey(),
              pdf_block(),
              block_grey(),
              pdf_block(),
              block_grey(),
              pdf_block(),
              block_grey(),
              pdf_block(),
              block_grey(),
              pdf_block(),
              block_grey(),
              pdf_block(),
              block_grey(),
              pdf_block(),
              block_grey(),
            ],
          ),
        ),
      ),
    );
  }
}

class pdf_block extends StatelessWidget {
  const pdf_block({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.picture_as_pdf),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text('Октябрь - расчётный лист', style: TextStyle(fontSize: 16),),
              ),
            ],
          ),
          Text('10/11/2022'),
        ],
      ),
    );
  }
}

