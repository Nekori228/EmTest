import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class password_change extends StatefulWidget {
  const password_change({Key? key}) : super(key: key);

  @override
  State<password_change> createState() => _password_changeState();
}

class _password_changeState extends State<password_change> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          'Смена пароля',
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 5),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Старый пароль",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Новый пароль",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                child: SizedBox(
                  width: 350,
                  height: 80,
                  child: PasswordField(
                    hintText: 'Повторите пароль',
                    color: Colors.blue,
                    passwordConstraint: r'1',
                    inputDecoration: PasswordDecoration(),
                    border: PasswordBorder(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(1, 103, 255, 1.0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)))),
                onPressed: () {},
                child: SizedBox(
                    width: 320,
                    height: 50,
                    child: Center(
                        child: Text(
                      'Сменить пароль',
                      style: TextStyle(fontSize: 21),
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
