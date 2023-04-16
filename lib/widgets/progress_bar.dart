import 'package:flutter/material.dart';

class progressBar extends StatelessWidget {
  final icons;
  final count;
  final total;

  progressBar({Key? key, this.icons, this.count, this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              '$count - $total',
              style: TextStyle(fontSize: 18, fontFamily: 'SourceSansPro'),
            ),
          ),
          SizedBox(width: 10),
          ...icons,
        ],
      ),
    );
  }
}
