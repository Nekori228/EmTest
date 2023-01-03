import 'package:emtest/pages/finansal_date.dart';
import 'package:emtest/pages/sale_card.dart';
import 'package:flutter/material.dart';

import 'bio.dart';
import 'intro_test.dart';
import 'material_cont.dart';

class office extends StatelessWidget {
  const office({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          acc_photo(),
          icon_block(),
          block_grey(),
          icon_block(),
          block_grey(),
          icon_block(),
          block_grey(),
          icon_block(),
          block_grey(),
        ],
      ),
    );
  }
}

class icon_block extends StatelessWidget {
  const icon_block({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => date()));
        },
        child: SizedBox(
          width: 300,
          height: 50,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Icon(Icons.account_box),
              ),
              Text(
                'Личные данные',
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                child: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class acc_photo extends StatelessWidget {
  const acc_photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/proffile_photo.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
