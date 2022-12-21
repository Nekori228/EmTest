import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ddd'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.add_card),
              label: 'Новости'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_card),
                label: 'Материал'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_card),
                label: 'Тесты'
            ),
          ],
        ),
      ),
    );
  }
}
