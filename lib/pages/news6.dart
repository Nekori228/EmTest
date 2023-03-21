import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class news_six extends StatelessWidget {
  const news_six({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/news6_big.png'),
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
                    'Bershka, Pull&Bear и Zara вернутся в Россию под новыми названиями',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontFamily: "SourceSansPro",
                          height: 1.3),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                            'В апреле Бренды ушедшей с российского рынка испанской фэшн-группы Inditex вернутся в Россию под новыми названиями в апреле. По информации Mash, Bershka будет называться Ecru, Pull&Bear станет DUB, а Zara - Maag. Открытие перенесли из-за землетрясений в Турции, пишет издание. Одежду для сетей будут изготавливать на турецких и китайских заводах.' + '\n\n'),
                        TextSpan(
                            text:
                                'По данным Mash, компании приступили к набору 4,5 тыс. человек персонала. Они обзванивают старых сотрудников и предлагают вернуться «в знакомые помещения». Людей набирают в 240 магазинов по всей стране.' + '\n\n'),
                        TextSpan(
                            text:
                                'В январе сообщалось, что для магазинов Zara разрабатывается специальная коллекция, учитывающая климатические условия страны. В её создании участвуют специалисты Inditex.' + '\n\n'),
                        TextSpan(
                          text:
                              'Ранее источники уже сообщали, что обновлённые магазины Zara получат название Maag. Отмечалось, что новый владелец российской части бизнеса Inditex - Daher Group - может открыть первые магазины под своими брендами весной 2023 года. Одной из первых под вывеской Maag станет точка в московском торговом центре «Авиапарк» с женской, мужской и детской одеждой.' + '\n\n',
                        ),
                        TextSpan(
                          text:
                              'В марте прошлого года Inditex принял решение временно прекратить работу в России. В октябре компания, у которой насчитывалось более 500 магазинов в стране, заявила о соглашении по продаже российского бизнеса ливанской группе Daher.' + '\n',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                width: 400,
                height: 210,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/news6_big.png'),
                    fit: BoxFit.cover,
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
