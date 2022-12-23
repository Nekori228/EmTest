import 'package:flutter/material.dart';

class office extends StatelessWidget {
  const office({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/proffile_photo.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
