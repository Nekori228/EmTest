import 'package:flutter/material.dart';

class info_registr extends StatelessWidget {
  const info_registr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 300,
              height: 100,
              child: Text(
                'Для прохождения теста необходимо войти или зарегистрироваться', textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 45, 0, 25),
            child: Container(
              width: 300,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue),
              ),
              child: Center(
                child: Text(
                  'Войти',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            width: 300,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.blue),
            ),
            child: Center(
              child: Text(
                'Зарегистрироваться',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
