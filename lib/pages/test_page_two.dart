import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/widgets/progress_bar.dart';
import 'package:emtest/widgets/quiz.dart';
import 'package:emtest/widgets/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';

class quiz_two extends StatefulWidget {
  const quiz_two({Key? key}) : super(key: key);

  @override
  State<quiz_two> createState() => _quiz_twoState();
}

class _quiz_twoState extends State<quiz_two> {
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
          _icons.add(Icon(
            Icons.square_rounded,
            color: Color.fromRGBO(1, 103, 255, 1.0),
            size: 30,
          ));
          _countResult++;
        } else {
          _icons.add(Icon(Icons.crop_square_rounded,
              color: Color.fromRGBO(1, 103, 255, 1.0)));
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
                    name: LocaleKeys.Safety_standards_Cash_zone.tr(),
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
    Question(title: 'Кто допускается к работе с кассой?', answers: [
      {'answer': 'Любой работник при трудоустройстве'},
      {
        'answer':
            'Сотрудники, прошедшие специальное обучение и подписавшие договор о полной материальной ответственности',
        'isCorrect': 1
      },
      {'answer': 'Только менеджер'},
    ]),
    Question(
        title: 'Можно ли говорить другим сотрудникам свои данные от кассы?',
        answers: [
          {'answer': 'Нет, нельзя', 'isCorrect': 1},
          {'answer': 'Да, можно'},
        ]),
    Question(title: 'Сколько цифр должен содержать пароль от кассы?', answers: [
      {'answer': '6', 'isCorrect': 1},
      {'answer': '7'},
      {'answer': '8'},
      {'answer': '4'},
    ]),
    Question(
        title:
            'Можно покупателю по требованию выдать фирменный пакет без покупки?',
        answers: [
          {'answer': 'Нет, нельзя', 'isCorrect': 1},
          {'answer': 'Да, можно'},
        ]),
    Question(
        title:
            'Что нужно сделать при обнаружении потерянных/забытых личных вещей покупателя?',
        answers: [
          {'answer': 'Необходимо передать сотруднику СБ', 'isCorrect': 1},
          {'answer': 'Оставить на кассовой зоне'},
          {'answer': 'Выкинуть'},
        ]),
    Question(
        title:
            'Что нужно сделать при обнаружении потерянных/забытых личных вещей покупателя?',
        answers: [
          {'answer': 'Необходимо передать сотруднику СБ', 'isCorrect': 1},
          {'answer': 'Оставить на кассовой зоне'}, //Верно
        ]),
    Question(
        title: 'Можно ли обслуживать продавцу своих друзей/родственников?',
        answers: [
          {
            'answer':
                'Нет, в данном случае обслуживать должен другой кассир или при присутствии ответственного лица',
            'isCorrect': 1
          },
          {'answer': 'Да, можно'},
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
