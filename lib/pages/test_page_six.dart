import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/widgets/progress_bar.dart';
import 'package:emtest/widgets/quiz.dart';
import 'package:emtest/widgets/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';

class quiz_six extends StatefulWidget {
  const quiz_six({Key? key}) : super(key: key);

  @override
  State<quiz_six> createState() => _quiz_sixState();
}

class _quiz_sixState extends State<quiz_six> {
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
          _icons.add(Icon(Icons.square_rounded,
              color: Color.fromRGBO(1, 103, 255, 1.0), size: 25));
          _countResult++;
        } else {
          _icons.add(Icon(Icons.crop_square_rounded,
              color: Color.fromRGBO(1, 103, 255, 1.0), size: 30));
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
                    name: "Технические проблемы",
                    total: data.questions.length,
                    onClearState: _clearstate,
                  )
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
    Question(
        title:
            'В каком момент нужно предпринимать действия, если при закрытии кассы не распечатался Z-отчет?',
        answers: [
          {'answer': 'Вечером'},
          {'answer': 'Сразу увидем проблему'},
          {'answer': 'Утром', 'isCorrect': 1},
        ]),
    Question(
        title:
            'Если касса не реагирует ни на монитор, ни на клавиатуру, с кем нужно связаться?',
        answers: [
          {'answer': 'Менеджером'},
          {
            'answer': 'Менеджером корпоративных бизнес-приложений',
            'isCorrect': 1
          },
          {'answer': 'Старшим кассиром'},
        ]),
    Question(
        title: 'В чем может быть причина не загрузки продаж в 1С?',
        answers: [
          {'answer': 'Не найден файл', 'isCorrect': 1},
          {'answer': 'Не было продаж'},
          {'answer': '1С не связана с кассой'},
        ]),
    Question(title: 'По какому времени начинаются решения проблем?', answers: [
      {'answer': 'В 8 по МСК', 'isCorrect': 1},
      {'answer': 'В 10 по МСК'},
      {'answer': 'В 9 по МСК'}, //Верно
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
            border:
                Border.all(width: 1, color: Color.fromRGBO(1, 103, 255, 1.0)),
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
