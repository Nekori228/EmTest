import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class password_change extends StatefulWidget {
  const password_change({Key? key}) : super(key: key);

  @override
  State<password_change> createState() => _password_changeState();
}

class _password_changeState extends State<password_change> {
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  bool _obscureText3 = true;

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
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Старый пароль",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText1 = !_obscureText1;
                          });
                        },
                        child: Icon(_obscureText1
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    obscureText: _obscureText1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Новый пароль",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText2 = !_obscureText2;
                          });
                        },
                        child: Icon(_obscureText2
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    obscureText: _obscureText2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Повторите пароль",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText3 = !_obscureText3;
                          });
                        },
                        child: Icon(_obscureText3
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    obscureText: _obscureText3,
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
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
