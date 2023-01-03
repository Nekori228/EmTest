import 'package:emtest/pages/material_cont.dart';
import 'package:flutter/material.dart';

class material extends StatefulWidget {
  const material({Key? key}) : super(key: key);

  @override
  State<material> createState() => _materialState();
}

class _materialState extends State<material> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Материал',
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
        child: Column(
          children: [
            material_list(),
            material_list(),
            material_list(),
            material_list(),
          ],
        ),
      ),
    );
  }
}

class material_list extends StatelessWidget {
  const material_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => material_content()));
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('assets/images/material_list.png'),
                    fit: BoxFit.cover)),
            width: 340,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/nav.png"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: SizedBox(
                      width: 250,
                      height: 70,
                      child: Text(
                        'Подготовка сотрудников органов внутренних дел к тестам на аттестацию',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
