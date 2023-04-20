import 'package:emtest/widgets/progress_bar.dart';
import 'package:emtest/widgets/quiz.dart';
import 'package:emtest/widgets/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class quiz_five extends StatefulWidget {
  const quiz_five({Key? key}) : super(key: key);

  @override
  State<quiz_five> createState() => _quiz_fiveState();
}

class _quiz_fiveState extends State<quiz_five> {
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
            _questionIndex != data.questions.length ? progressBar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ) : Container(),
            _questionIndex < data.questions.length
                ? quiz(
              index: _questionIndex,
              questionData: data,
              onChangeAnswer: _onChangeAnswer,
            )
                : result(
                count: _countResult,
                total: data.questions.length,
                name: 'Стандарты безопасности. Сейф',
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
    Question(title: 'В какие моменты должен менятся код от сейфа?', answers: [
      {'answer': '1 раз в месяц', 'isCorrect': 1},
      {'answer': '1 раз в полгода'},
      {'answer': 'При уволнении/переводе сотрудника'}, //Верно
    ]),
    Question(title: 'Кто должен менять код от сейфа?', answers: [
      {'answer': 'Старший кассир'},
      {'answer': 'Менеджер'},
      {'answer': 'Старший кассир/менеджер', 'isCorrect': 1},
      {'answer': 'Любой сотрудник'},
    ]),
    Question(title: 'Что разрешается хранить в сейфе?', answers: [
      {'answer': 'Личные вещи'},
      {'answer': 'Денежные средства', 'isCorrect': 1},
      {'answer': 'Медицинские/трудовые книжки'}, //Верно
    ]),
    Question(title: 'У кого находятся ключи от сейфа?', answers: [
      {'answer': 'У ответственного сотрудника', 'isCorrect': 1},
      {'answer': 'Менеджера'},
      {'answer': 'Кассира'},
    ]),
    Question(title: 'Где находятся ключи при закрытии магазина?', answers: [
      {'answer': 'В главной кассе', 'isCorrect': 1},
      {'answer': 'Во второстепенной кассе'},
      {'answer': 'У менеджера, кто закрывал магазин'},
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
