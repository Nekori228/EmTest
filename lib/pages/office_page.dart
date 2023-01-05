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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          acc_photo(),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => bio_info()));
              },
              child: SizedBox(
                width: 400,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(Icons.account_box),
                        ),
                        Text(
                          'Личные данные',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
          ),
          block_grey(),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => sale_card()));
              },
              child: SizedBox(
                width: 400,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                          child: Icon(Icons.credit_card),
                        ),
                        Text(
                          'Скидочная карта',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
          ),
          block_grey(),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => date()));
              },
              child: SizedBox(
                width: 400,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(Icons.account_balance_outlined),
                        ),
                        Text(
                          'Мои финансовые данные',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
          ),
          block_grey(),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => date()));
              },
              child: SizedBox(
                width: 400,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(Icons.settings_applications_outlined),
                        ),
                        Text(
                          'Заявки',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
          ),
          block_grey(),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => date()));
              },
              child: SizedBox(
                width: 400,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(Icons.history),
                        ),
                        Text(
                          'История',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
          ),
          block_grey(),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => date()));
              },
              child: SizedBox(
                width: 400,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(Icons.password),
                        ),
                        Text(
                          'Смена пароля',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
          ),
          block_grey(),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => date()));
              },
              child: SizedBox(
                width: 400,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child: Icon(Icons.logout),
                        ),
                        Text(
                          'Выйти',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
          ),
          block_grey(),
        ],
      ),
    );
  }
}

class acc_photo extends StatelessWidget {
  const acc_photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 400,
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
