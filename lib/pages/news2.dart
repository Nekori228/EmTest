import 'package:flutter/material.dart';

class news_two extends StatelessWidget {
  const news_two({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/news2_big.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: 330,
                height: 70,
                child: Text('Телефонное мошенничество',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 26)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: 350,
                height: 680,
                child: Text(
                  'Мы живем в эру технологий, и это огромное поле для деятельности разного рода мошенников. К сожалению, в последнее время участились случаи «нападения» киберпреступниками на сотрудников нашей компании в России. И зачастую даже опытные сотрудники поддавались на их уловки и несли финансовые потери. \n\nДля того, чтобы снизить количество подобных ситуаций мы подготовили короткий видеоролик, рассказывающий о самой частой схеме мошенничества. \n\nПередайте информацию своим коллегам и порекомендуйте посмотреть данный ролик! Если вы заметите, что ваш коллега планирует передать кому-то денежные средства магазина, остановите его и расскажите о возможных последствиях. \n\nДавайте совместно сделаем так, чтобы таких ситуаций больше не происходило!',
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
                      image: AssetImage('assets/images/news2_big.png'),
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
