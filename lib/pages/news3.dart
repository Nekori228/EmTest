import 'package:flutter/material.dart';

class news_three extends StatelessWidget {
  const news_three({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/news3_big.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: 330,
                height: 80,
                child: Text('Первая линия защиты от кибератак – это вы',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 26)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: 350,
                height: 1350,
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    text:
                        'Знаете ли вы, что причиной более 85% кибератак является человеческий фактор? \n\nКибератаки на компании и частных лиц продолжают увеличиваться и становятся все более изощренными. Однако лучшей защитой от этих кибератак остаемся мы сами. Поэтому сегодня, во Всемирный день информационной безопасности, мы хотим напомнить вам о некоторых рекомендациях, с помощью которых их можно избежать:',
                    style: TextStyle(color: Colors.black, fontSize: 19),
                    children: <TextSpan>[
                      TextSpan(
                          text: '\n\nПароли\n\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'Создавайте уникальные пароли для каждого сервиса, длинные и надежные. Избегайте использования общих слов и сочетайте прописные и строчные буквы, числа и символы. По возможности используйте двухфакторную аутентификацию и никогда никому не сообщайте свои пароли.!'),
                      TextSpan(
                          text: '\n\nОбновления\n\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'Обновляйте операционную систему и приложения на своих устройствах, это защитит нас от уязвимостей, используемых киберпреступниками.'),
                      TextSpan(
                          text: '\n\nWi-Fi\n\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'Избегайте подключения к общедоступным сетям Wi-Fi, поскольку они небезопасны и злоумышленники могут легко украсть нашу информацию. Если вы работаете вне офиса, не забудьте подключиться к VPN (Pulse Secure).'),
                      TextSpan(
                          text: '\n\nЭлектронная почта\n\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              'Электронная почта является наиболее распространенной точкой входа для кибератак. Если вы получаете электронные письма неизвестного происхождения или которых вы не ожидаете, а также электронные письма со странными запросами, не открывайте их вложения и не переходите по ссылкам.'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: SizedBox(
                width: 350,
                height: 100,
                child: Text('\n\nБезопасность начинается с вас',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold)),
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
                      image: AssetImage('assets/images/news3_big.png'),
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

// Text(
// 'Знаете ли вы, что причиной более 85% кибератак является человеческий фактор? \n\nКибератаки на компании и частных лиц продолжают увеличиваться и становятся все более изощренными. Однако лучшей защитой от этих кибератак остаемся мы сами. Поэтому сегодня, во Всемирный день информационной безопасности, мы хотим напомнить вам о некоторых рекомендациях, с помощью которых их можно избежать: \n\nПароли\n\nСоздавайте уникальные пароли для каждого сервиса, длинные и надежные. Избегайте использования общих слов и сочетайте прописные и строчные буквы, числа и символы. По возможности используйте двухфакторную аутентификацию и никогда никому не сообщайте свои пароли.\n\nОбновления\n\nОбновляйте операционную систему и приложения на своих устройствах, это защитит нас от уязвимостей, используемых киберпреступниками. \n\nWi-Fi\n\nИзбегайте подключения к общедоступным сетям Wi-Fi, поскольку они небезопасны и злоумышленники могут легко украсть нашу информацию. Если вы работаете вне офиса, не забудьте подключиться к VPN (Pulse Secure).\n\nЭлектронная почта\n\nЭлектронная почта является наиболее распространенной точкой входа для кибератак. Если вы получаете электронные письма неизвестного происхождения или которых вы не ожидаете, а также электронные письма со странными запросами, не открывайте их вложения и не переходите по ссылкам.\n\nБезопасность начинается с вас',
// textAlign: TextAlign.start,
// style: TextStyle(color: Colors.black, fontSize: 19),
// ),
