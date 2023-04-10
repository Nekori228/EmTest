import 'package:flutter/material.dart';

class material_content5 extends StatefulWidget {
  const material_content5({Key? key}) : super(key: key);

  @override
  State<material_content5> createState() => _material_contentState();
}

class _material_contentState extends State<material_content5> {
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
                  image: AssetImage('assets/images/material5.jpg'),
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
                      'Стандарты безопасности. Сейф',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            'Код от сейфа должен меняться старшим кассиром и/или менеджером 1 раз в месяц и при увольнении/переводе сотрудника, имевшего доступ к сейфу. Код меняется согласно инструкции',
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
                            'Сейф всегда должен быть закрыт и на ключ, и на код (если сейф открывается без кода, а только с использованием ключа, необходимо обратиться к курирующему ваш магазин менеджеру корпоративных бизнес-приложений для составления заявки на ремонт сейфа)',
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
                            'Ключ от сейфа находится только у ответственного за него сотрудника, не выносится за пределы магазина и не передается другому сотруднику без пересчёта сейфа и внесения записи в журнал пересчета сейфа; во время перерыва ответственного кассира, ключ от сейфа хранится в денежном ящике кассы, за которой он работает, или в его личном шкафчике (если на кассе он не работает)',
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
                            'Приём и передача сейфа осуществляется три раза в день. Полученные после подсчёта денежных средства с учетом резерва всегда фиксируются в журнале пересчёта сейфа (согласно инструкции по пересчету сейфа)',
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
                            'Резервные денежные средства должны быть опечатаны кассиром и менеджером, номера пломб/сумок указаны в описи под подпись. Каждый раз при снятии пломбы, кассир совместно с менеджером пересчитывает всю наличность в данном мешке. Последняя опись должна находиться в сейфе',
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
                            'Описи резервных д\с должны храниться в специальной папке в исходном виде (не вносить вручную никаких изменений). Описи хранятся до тех пор, пока в них содержится хотя бы одна актуальная пломба',
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
                            'При каждом пересчете сейфа необходимо убедиться в целостности мешков в резерве и актуальности номеров пломб и сумм (их соответствие описи и данным на компьютере)',
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
                            'После вечернего пересчёта сейфа ключ от сейфа хранится в денежном ящике главной кассы',
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
                            'Дубликат ключа от сейфа соединяется номерной пломбой с основным ключом от сейфа и хранится вместе с ним. Номер пломбы фиксируется в описи резерва денежных средств',
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
                            'В сейфе разрешается хранить: денежные средства, ручной алармосъемник (при его использовании необходимо заполнять бланк выдачи/приема алармосъемника), медицинские книжки и трудовые книжки уволившихся сотрудников (для регионов)',
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
                            'Сейф должен быть установлен в кассовой зоне под камерой или в специальной комнате (в этом случае комната должна быть всегда закрыта на ключ)',
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
                            'В случае экстренных ситуаций, связанных с денежными средствами (мошенничество, кражи, крупные недостачи), необходимо незамедлительно сообщить DT, HR, менеджеру корпоративных бизнес-приложений и отделу предотвращения потерь.',
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3, fontWeight: FontWeight.bold),
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
                    image: AssetImage('assets/images/material5.jpg'),
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
