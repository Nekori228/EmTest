import 'package:emtest/widgets/progress_bar.dart';
import 'package:emtest/widgets/quiz.dart';
import 'package:emtest/widgets/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class quiz_three extends StatefulWidget {
  const quiz_three({Key? key}) : super(key: key);

  @override
  State<quiz_three> createState() => _quiz_threeState();
}

class _quiz_threeState extends State<quiz_three> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearstate() => setState(() {
    _questionIndex = 0;
    _countResult = 0;
    _icons = [];
  });

  void _onChangeAnswer(bool isCorrect) => setState(() {
    if (isCorrect) {
      _icons.add(Icon(Icons.crop_square_rounded, color: Color.fromRGBO(1, 103, 255, 1.0), size: 30,));
      _countResult++;
    } else {
      _icons.add(Icon(Icons.square_rounded, color: Color.fromRGBO(1, 103, 255, 1.0)));
    }

    _questionIndex += 1;
  });

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          'Тесты',
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
      body: Center(
        child: Column(
          children: <Widget>[
            progressBar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ),
            _questionIndex < data.questions.length
                ? quiz(
              index: _questionIndex,
              questionData: data,
              onChangeAnswer: _onChangeAnswer,
            )
                : result(
                count: _countResult,
                total: data.questions.length,
                onClearState: _clearstate)
          ],
        ),
      ),
    );
  }
}

class Question {
  final String title;
  final List<Map> answers;

  Question({required this.title, required this.answers});
}

class QuestionData {
  final questions = [
    Question(title: 'При окончании смены, что нужно сделать с алармами?', answers: [
      {'answer': 'Оставить в ящике'},
      {'answer': 'Убрать в коробку и опечатать', 'isCorrect': 1},
    ]),
    Question(title: 'В случае если покупатель обращается по факту неснятого аларма на оплаченном товаре в вашем магазине?', answers: [
      {'answer': 'Сообщить менеджеру', 'isCorrect': 1},
      {'answer': 'Снять аларм самостоятельно'},
    ]),
    Question(title: 'Кем осуществляется выдача ручного алармосъемника?', answers: [
      {'answer': 'Ответственным за сейф', 'isCorrect': 1},
      {'answer': 'Менеджеров'},
      {'answer': 'Кассир вправе сам открыть сейф и взять'},
    ]),
    Question(title: 'В случае если покупатель обращается по факту неснятого аларма на оплаченном товаре в другом магазине?', answers: [
      {'answer': 'Сказать покупателю, что он должен обратиться в магазин, в котором была совершена покупка', 'isCorrect': 1},
      {'answer': 'Снять аларм самостоятельно'},
    ]),
  ];
}

class answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onChangeAnswer;

  answer(
      {Key? key,
        required this.title,
        required this.isCorrect,
        required this.onChangeAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(isCorrect),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 5.0,
        ),
        padding: EdgeInsets.all(10.0),
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color.fromRGBO(1, 103, 255, 1.0)),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white),
        child: Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF000000).withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}
