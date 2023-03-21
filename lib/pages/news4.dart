import 'package:flutter/material.dart';

class news_four extends StatelessWidget {
  const news_four({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/news4_big.png'),
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
                    'ОТКРЫТЫЕ ТРЕНИНГИ: эффективная презентация в виртуальной реальности' + '\n',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text:
                      '13 апреля состоялась встреча по Take Back Program в рамках проектах. ',
                      style: TextStyle(color: Colors.black, fontSize: 19, height: 1.3),
                      children: <TextSpan>[
                        TextSpan(
                            text: '«Открытые тренинги» ',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(
                            text:
                            'Диана Идиятова, аналитик отдела по работе с персоналом и драйвер направления sustainability в компании, и специальный гость Дарья Алексеева, учредитель фонда «Второе дыхание», рассказали о переработке одежды в России и о результатах проектах ТВР в нашей компании. \n\nТренинг посетили 317 человек. По итогам обратной связи '),
                        TextSpan(
                            text: '91% из них готовы порекомендовать данный тренинг коллегам!',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(
                            text:
                            '\n\nСледующий Открытый тренинг '),
                        TextSpan(
                            text: 'Эффективная презентация в виртуальной реальности» состоится 27 апреля. ',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(
                            text:
                            'Проведет его '),
                        TextSpan(
                            text: 'Оксана Огородникова, руководитель отдела обучения и развития персонала в АО «Новая Мода».',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(
                            text:
                            '\n\nОксана сделает акцент на таких темах как:\n- важность и сила речи: логика конструкций, слова-паразиты, метафоры; \n- жестикуляция, голос, дыхание и артикуляционная гимнастика в прямом эфире;\n- особенности визуальной составляющей презентации и спикера;\n- технические лайфхаки при презентации в виртуальной реальности.\n\nЧтобы зарегистрироваться и принять участие в Открытом тренинге – обратитесь к менеджеру для заполнения опросника. Уже 935 сотрудников оставили заявку!\n\nСсылка на подключение к трансляции в Teams придет на указанную в опроснике почту в течение нескольких дней.'),
                        TextSpan(
                            text: '\n\nНе упустите уникальную возможность обучаться у экспертов компании!',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ],
                    ),
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
                  image: AssetImage('assets/images/news4_big.png'),
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
