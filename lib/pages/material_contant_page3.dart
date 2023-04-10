import 'package:flutter/material.dart';

class material_content3 extends StatefulWidget {
  const material_content3({Key? key}) : super(key: key);

  @override
  State<material_content3> createState() => _material_contentState();
}

class _material_contentState extends State<material_content3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  image: AssetImage('assets/images/material3.jpg'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Стандарты безопасности. Алармы',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            'Кассир обязан контролировать наличие алармов на всем товаре в кассовой зоне: резерв, возвраты, портная, химчистка, брак, парфюм, аксессуары, а также на товаре, который выносится с кассы в зал и на склад',
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            'По окончании смены кассир убирает все алармы, накопившиеся за день, в предназначенную для этого коробку и опечатывает ее. На ночь ящик для алармов на кассе должен оставаться пустым',
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            'В случае обращения покупателя по факту неснятого аларма на уже оплаченном товаре, кассиру необходимо незамедлительно сообщить об этом менеджеру, если покупатель обратился по факту неснятого аларма на уже оплаченном товаре из другого магазина, покупателю необходимо обратиться в магазин, в котором был приобретен данный товар',
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            'Выдача ручного алармосъемника осуществляется ответственным за сейф сотрудником лично в руки под подпись в бланке выдачи ручного алармосъемника',
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
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
                    image: AssetImage('assets/images/material3.jpg'),
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
