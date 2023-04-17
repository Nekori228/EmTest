import 'package:flutter/cupertino.dart';

import '../pages/test_page_one.dart';

class quiz extends StatelessWidget {
  final index;
  final questionData;
  final onChangeAnswer;

  quiz({Key? key, this.index, this.questionData, this.onChangeAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            questionData.questions[index].title,
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 30),
        ...questionData.questions[index].answers
            .map((value) => answer(
                  title: value['answer'],
                  onChangeAnswer: onChangeAnswer,
                  isCorrect: value.containsKey('isCorrect') ? true : false,
                ))
            .toList(),
      ],
    );
  }
}
