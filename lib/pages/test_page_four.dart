import 'package:emtest/widgets/progress_bar.dart';
import 'package:emtest/widgets/quiz.dart';
import 'package:emtest/widgets/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class quiz_four extends StatefulWidget {
  const quiz_four({Key? key}) : super(key: key);

  @override
  State<quiz_four> createState() => _quiz_fourState();
}

class _quiz_fourState extends State<quiz_four> {
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
    Question(title: 'В присутствии кого производится отмена чека?', answers: [
      {'answer': 'Менеджера', 'isCorrect': 1},
      {'answer': 'Ответственного лица'},
      {'answer': 'Присутствие необязательно'},
    ]),
    Question(title: 'Если сотрудник обнаружил чек покупателя, что необходимо сделать?', answers: [
      {'answer': 'Оставить себе'},
      {'answer': 'Утилизировать'},
      {'answer': 'Утилизировать в присутствии ответственного лица', 'isCorrect': 1},
    ]),
    Question(title: 'Что необходимо проверять ежедневно?', answers: [
      {'answer': 'Отчет менеджера', 'isCorrect': 1},
      {'answer': 'Сумму продаж'},
      {'answer': 'РКО И СКО'},
    ]),
    Question(title: 'В случае если покупатель возвращает не все позиции из исходного чека, какой документ необходимо предоставить ему?', answers: [
      {'answer': 'Заверенную кассовую копию этого чека', 'isCorrect': 1},
      {'answer': 'Чек возврата'},
      {'answer': 'Чек покупки'},
    ]),
    Question(title: 'В случае возврата без чека в течение какого времени возможно использование копии чека из 1с?', answers: [
      {'answer': 'В течение 10 минут', 'isCorrect': 1},
      {'answer': 'В течение 5 минут'},
      {'answer': 'В течение 15 минут'},
    ]),
    Question(title: '', answers: [
      {'answer': ''},
      {'answer': '', 'isCorrect': 1},
    ]),
    Question(title: 'Менеджер обязан присутствовать на протяжении всей процедуры возврата?', answers: [
      {'answer': 'Да', 'isCorrect': 1},
      {'answer': 'Нет'},

    ]),
    Question(title: 'После истечения какого времени запрещается аннулирование чека прихода?', answers: [
      {'answer': 'по истечении 3-х минут', 'isCorrect': 1},
      {'answer': 'по истечении 5-х минут'},
      {'answer': 'по истечении 10-х минут'},
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
