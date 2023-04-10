import 'package:flutter/material.dart';

class material_content4 extends StatefulWidget {
  const material_content4({Key? key}) : super(key: key);

  @override
  State<material_content4> createState() => _material_contentState();
}

class _material_contentState extends State<material_content4> {
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
                  image: AssetImage('assets/images/material4.jpg'),
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
                      'Стандарты безопасности. Кассовые операции',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            'При авторизации возвратов (в том числе интернет-возвратов), аннулировании чеков, изменении формы оплаты менеджер должен до оформления операции на кассе указать на чеке (сопроводительном документе): дата, слово «ВОЗВРАТ», подпись, Фамилия И.О., табельный номер менеджера, количество единиц цифрами и прописью с их четким обозначением в чеке. Также менеджер обязан присутствовать на протяжении всей процедуры возврата и подписать расходный кассовый ордер и заявление сразу после оформления возврата. В случае если в магазине нет менеджера, то сотрудник, который был оставлен ответственным, должен подписать чек продажи (как указано выше) с оборотной стороны. Если ответственный сотрудник (или менеджер) работает за кассой, то он не может себе авторизовать возврат, это должно происходить на другой кассе',
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
                            'Отмена чека осуществляется только в присутствии менеджера с использованием личного кода',
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
                            'Запрещается аннулировать чеки прихода по истечении 3-х минут, а также, если после данного чека уже были осуществлены другие продажи/возвраты',
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
                            'Считывание артикулов производится с использованием RFID-системы. Кассир должен следить за тем, чтобы количество и стоимость изделий, артикулов в чеке соответствовали фактическому наличию',
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
                            'Кассир обязан передать покупателю кассовый чек прихода/возврата прихода по окончании процедуры продажи/возврата',
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
                            'Товарный чек выдается кассиром покупателю по его просьбе только в дополнение к фискальному чеку прихода (заполняются все необходимые столбцы, ставится подпись кассира и печать магазина)',
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
                            'В случае возврата без чека возможно использование копии чека из 1с только в течение 10 минут с момента её печати и только в том магазине, в котором она была напечатана',
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
                            'На передаваемых покупателям копиях кассовых чеков необходимо наличие печати компании, слов «КОПИЯ ВЕРНА», даты, подписи, расшифровки и табельного номера менеджера',
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
                            'Сотрудникам не разрешается хранить чеки покупателей. Если чек был найден или забыт покупателем, его необходимо уничтожить в присутствии ответственного сотрудника (менеджер, сотрудник СБ)',
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
                            'В случае если покупатель возвращает не все позиции из исходного чека, необходимо предоставить ему заверенную кассовую копию этого чека. Если покупатель отказался от копии чека на невозвращенные позиции – данный чек должен быть уничтожен',
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
                            'Оплата/Возврат по карте покупателем должна осуществляться в присутствии держателя карты и при наличии документа, содержащего фотографию, ФИО и образец подписи. Без документа допускается принимать к оплате карты, имеющие на себе чип (требующие ввода ПИН-кода) или фото держателя карты, бесконтактные системы оплаты, а также карты, на которых не указано имя держателя',
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
                            '«Отчет менеджера» необходимо проверять ежедневно, по окончании своей смены. В данном отчете будут включены операции, требующие дополнительной проверки. Менеджер лично проверяет наличие и подписи во всех возвратах, аннулированных чеках, изменениях цены и ставит статус по каждой запрошенной операции в «отчет менеджера». В случае отсутствия менеджера в смене, отчёт менеджера проверяет сотрудник, который был оставлен ответственным',
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
                            'Менеджер магазина должен контролировать выполнение положений приказа о списке должностных лиц, имеющих право подписи кассовых документов',
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
                    image: AssetImage('assets/images/material4.jpg'),
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
