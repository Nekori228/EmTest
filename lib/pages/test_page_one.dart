import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/widgets/progress_bar.dart';
import 'package:emtest/widgets/quiz.dart';
import 'package:emtest/widgets/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';

class quiz_one extends StatefulWidget {
  const quiz_one({Key? key}) : super(key: key);

  @override
  State<quiz_one> createState() => _quiz_oneState();
}

class _quiz_oneState extends State<quiz_one> {
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
              color: Color.fromRGBO(1, 103, 255, 1.0)));
          _countResult++;
        } else {
          _icons.add(Icon(
            Icons.crop_square_rounded,
            color: Color.fromRGBO(1, 103, 255, 1.0),
            size: 30,
          ));
        }

        _questionIndex += 1;
      });

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          LocaleKeys.Tests.tr(),
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                if (context.locale == Locale('en')) {
                  context.setLocale(Locale('ru'));
                } else {
                  context.setLocale(Locale('en'));
                }
              },
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
    Question(title: 'Должен ли кассир объявлять сумму покупки?', answers: [
      {'answer': 'Обязательно', 'isCorrect': 1},
      {'answer': 'По требованию покупателя'},
      {'answer': 'Покупатель увидит сумму в чеке'},
    ]),
    Question(
        title: 'Должен ли кассир объяснять важность сохранения чека?',
        answers: [
          {'answer': 'Обязательно', 'isCorrect': 1},
          {'answer': 'Если покупатель спросит'},
          {'answer': 'Необязательно'},
        ]),
    Question(
        title:
            'Имеет ли право кассир разговаривать по телефону во время работы с покупателем?',
        answers: [
          {'answer': 'Нет, не имеет', 'isCorrect': 1},
          {'answer': 'Да, имеет'},
        ]),
    Question(title: 'Что должен сделать в конце продавец?', answers: [
      {
        'answer':
            'Поблагодарить за покупку, отдать покупку, сказать «До свидания»',
        'isCorrect': 1
      },
      {'answer': 'Отдать покупку, сказать «До свидания»'},
      {'answer': 'Отдать покупку'},
    ]),
    Question(
        title: 'Может ли продавец по просьбе покупателя разменять ему деньги?',
        answers: [
          {'answer': 'Ни в коем случае', 'isCorrect': 1},
          {'answer': 'Да, может'},
        ]),
    Question(title: 'Что продавец должен сделать при покупке обуви?', answers: [
      {'answer': 'Проверить размер', 'isCorrect': 1},
      {'answer': 'Проверить на наличие брака, может'}, //Верно
    ]),
    Question(
        title:
            'Если покупатель отказывается от мелочи, как в таком случае должен поступить продавец?',
        answers: [
          {
            'answer': 'Постараться вежливо уговорить взять сдачу',
            'isCorrect': 1
          },
          {'answer': 'Положить мелочь вместе с покупкой в пакет'}, //Верно
          {'answer': 'Положить сдачу в кассу'},
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
            color: Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}
