import 'package:flutter/material.dart';

class news_one extends StatelessWidget {
  const news_one ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          'Материал',
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 430,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/news1_big.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: 330,
                height: 100,
                child: Text(
                    'С наступающим Новым 2023 годом! Дорогие коллеги',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 26)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: 350,
                height: 1200,
                child: Text(
                  'Каждый год, готовя новогоднее сообщение, я размышляю о достигнутых результатах, ваших успехах и вспоминаю поводы для гордости и сложности, которые вы преодолели. \nИ всякий раз мне кажется, что отдаваться делу с еще большей ответственностью и страстью просто невозможно. \nНо каждый год я с удивлением понимаю, что вы снова и снова делаете что-то невероятное, демонстрируя свою преданность и любовь к делу. \nИ сегодня я опять впечатлен нашими достижениями и благодарен вам за работу и старания. И хочу сказать за это БОЛЬШОЕ СПАСИБО каждому из вас.\n\nВ этом году в нашей компании произошло много важных изменений. Ясно, что все они найдут отражение в нашей работе в следующем, наступающем году. Вместе мы будем сильнее и сможем двигаться вперед и решать новые задачи. И я хочу попросить вас, чтобы вы продолжали быть КОМАНДОЙ и показывали такой же высокий уровень сплоченности. И иногда останавливались и задумывались: учитываю ли я мнение КАЖДОГО из членов команды? Как я могу позаботиться об окружающих меня людях? Слушаю ли я достаточно внимательно или просто слышу? Что я могу сделать иначе сегодня, чтобы завтра получить лучший результат? И всегда находили время для слов благодарности для тех, кто рядом с нами, и говорили им о том, как цените их работу. \n\nПоздравляю вас и ваших близких с наступающим Новым годом и Рождеством! Счастья, здоровья и благополучия вам! \n\nЛучиан Доробанту',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Container(
                  width: 400,
                  height: 210,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/news1_big.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
