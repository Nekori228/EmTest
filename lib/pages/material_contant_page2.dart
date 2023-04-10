import 'package:flutter/material.dart';

class material_content2 extends StatefulWidget {
  const material_content2({Key? key}) : super(key: key);

  @override
  State<material_content2> createState() => _material_contentState();
}

class _material_contentState extends State<material_content2> {
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
                  image: AssetImage('assets/images/material2.jpg'),
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
                      'Стандарты безопасности. Кассовая зона',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            'К работе на кассе допускаются только сотрудники, прошедшие специальное обучение и подписавшие договор о полной материальной ответственности',
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
                            'Кассир обязан поддерживать чистоту и порядок на кассе, в том числе проконтролировать отсутствие личных вещей на кассе и денежных средств вне денежного ящика. Во время работы на кассе у кассира не должно быть его личных денежных средств, банковских карт и мобильного телефона',
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
                            'Каждый сотрудник обязан работать на кассе только под своим табельным номером и убедиться в его корректном вводе до начала работы',
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
                            'В зоне касс могут находиться только кассиры, работающие в данный момент на кассе, и/или менеджер',
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
                            'Кассиру запрещено обслуживать родственников и/или друзей. Если на данный момент он является единственным кассиром в магазине – обслуживание должно происходить в присутствии ответственного лица',
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
                            'Касса должна быть заблокирована на личный 6-ти значный код, если она не используется в данный момент. Кассиру запрещено сообщать свой личный код от кассы третьим лицам',
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
                            'Кассиру запрещено передавать клиентам фирменные пакеты без покупки, а также использовать их в личных целях',
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
                            'Запрещено хранение потерянных и/или забытых личных вещей покупателя на кассовой зоне. В случае обнаружения забытых и/или потерянных вещей, их необходимо передать сотруднику СБ',
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
                            'Запрещено обеспечивать кассу разменом более установленной суммы',
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            'Кассиру запрещено самостоятельно осуществлять пересчет кассы, т.е. при сдаче выручки кассир должен соблюдать следующий порядок: ',
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
                        Expanded(
                          child: Text(
                            '1. В присутствии второго сотрудника (за исключением случаев, когда работает один сотрудник в смену) кассир пересчитывает свою выручку, заполняет справку кассира-операциониста (СКО) по фактическим данным, после чего снимает баланс с кассы',
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
                        Expanded(
                          child: Text(
                            '2. Полученная сумма сверяется с балансом кассы, а расхождения фиксируются в снятом с кассы балансе',
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
                        Expanded(
                          child: Text(
                            '3. Ответственный за сейф пересчитывает денежные средства повторно, сверяет их с СКО и убирает в сейф',
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
                    image: AssetImage('assets/images/material2.jpg'),
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
