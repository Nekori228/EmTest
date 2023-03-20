import 'package:flutter/material.dart';

class news_one extends StatelessWidget {
  const news_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          'Новости',
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
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                children: [
                  Text(
                    'С наступающим Новым 2023 годом!',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Дорогие коллеги, \n\nКаждый год, готовя новогоднее сообщение, я размышляю о достигнутых результатах, ваших успехах и вспоминаю поводы для гордости и сложности, которые вы преодолели. \nИ всякий раз мне кажется, что отдаваться делу с еще большей ответственностью и страстью просто невозможно. \nНо каждый год я с удивлением понимаю, что вы снова и снова делаете что-то невероятное, демонстрируя свою преданность и любовь к делу. \nИ сегодня я опять впечатлен нашими достижениями и благодарен вам за работу и старания. И хочу сказать за это БОЛЬШОЕ СПАСИБО каждому из вас.\n\nВ этом году в нашей компании произошло много важных изменений. Ясно, что все они найдут отражение в нашей работе в следующем, наступающем году. Вместе мы будем сильнее и сможем двигаться вперед и решать новые задачи. И я хочу попросить вас, чтобы вы продолжали быть КОМАНДОЙ и показывали такой же высокий уровень сплоченности. И иногда останавливались и задумывались: учитываю ли я мнение КАЖДОГО из членов команды? Как я могу позаботиться об окружающих меня людях? Слушаю ли я достаточно внимательно или просто слышу? Что я могу сделать иначе сегодня, чтобы завтра получить лучший результат? И всегда находили время для слов благодарности для тех, кто рядом с нами, и говорили им о том, как цените их работу. \n\nПоздравляю вас и ваших близких с наступающим Новым годом и Рождеством! Счастья, здоровья и благополучия вам! \n\nНикита Кучеров',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 19, height: 1.3),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
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
          ],
        ),
      ),
    );
  }
}
