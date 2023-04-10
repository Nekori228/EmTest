import 'package:flutter/material.dart';

class material_content1 extends StatefulWidget {
  const material_content1({Key? key}) : super(key: key);

  @override
  State<material_content1> createState() => _material_contentState();
}

class _material_contentState extends State<material_content1> {
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
                  image: AssetImage('assets/images/material1.jpg'),
                  fit: BoxFit.cover,
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
                      'Минимумы кассиров',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            'Кассиры это наш последний контакт с покупателями. От его/ее отношения зависит конечная удовлетворенность покупателя',
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
                            'Любая передача от кассира покупателю осуществляется из рук в руки: банковская карта, чек продажи/возврата, деньги, ручка и т.д.',
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
                            'Товар, поступающий на кассу – это уже купленный товар. Кассир всегда обращается с ним бережно: снимая аларм, складывая, упаковывая вещь в пакет, а также передавая пакет покупателю',
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
                            'Кассир всегда объявляет сумму покупки достаточно громко',
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
                            'Кассир обязан объяснять покупателю важность сохранения чека',
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
                            'Кассир обязан скреплять степлером чек по банковской карте и фискальный чек',
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
                            'Кассир обязан сообщать покупателю всю интересующую его информацию (предоставляемые магазином услуги, правила...)',
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
                            'Кассир не разговаривает по телефону в момент оплаты покупателем его покупки',
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
                            'Кассир всегда должен благодарить покупателя за покупку и говорить «до свидания»',
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Так же в наших магазинах:',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            'Не меняют и не разменивают деньги',
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
                            'Вешалки – это элементы оформления магазина, поэтому строго запрещается отдавать их клиентам',
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
                            'Всегда сверяют размер на обуви (предупреждая образование разнопарок)',
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
                            'Если на вещи, которую собирается оплатить покупатель, вы замечаете брак, то сообщайте об этом клиенту и старайтесь предложить альтернативу',
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
                            'Всегда отдают всю сдачу; если покупатель отказывается от мелочи, всегда стараемся вежливо его уговорить, либо положить мелочь вместе с покупкой в пакет',
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
                    image: AssetImage('assets/images/material1.jpg'),
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
