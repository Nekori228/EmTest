import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/globals.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:enough_mail/enough_mail.dart';

import '../generated/locale_keys.g.dart';

class applications extends StatelessWidget {
  applications({Key? key}) : super(key: key);

  static final _formKey = GlobalKey<FormState>();

  final List<String> equipmentItems = [
    'RFID',
    'iPod',
    'Cканер',
    'Касса',
    'Принтер',
  ];

  final List<String> cause = [
    'Не включается оборудование',
    'Оборудование зависло',
    'Сломалась устройство для зарядки',
    'Нет определенного приложения',
    'Другое',
  ];

  var descriptionController = TextEditingController();
  var kodController = TextEditingController();

  String? selectedValue;
  String? selectedValue2;

  Future<void> mailSend(context) async {
    final client = SmtpClient('enough.de', isLogEnabled: false);
    try {
      await client.connectToServer('smtp.mail.ru', 465, isSecure: true);
      await client.ehlo();
      if (client.serverInfo.supportsAuth(AuthMechanism.plain)) {
        await client.authenticate('applications23@mail.ru', 'fBW4PkxYtqWCuLyjLRg7', AuthMechanism.plain);
      } else if (client.serverInfo.supportsAuth(AuthMechanism.login)) {
        await client.authenticate('applications23@mail.ru', 'fBW4PkxYtqWCuLyjLRg7', AuthMechanism.login);
      } else {
        return;
      }
      final builder = MessageBuilder.prepareMultipartAlternativeMessage(
        plainText: 'Заявка на поломку оборудования',
        htmlText:
            'Заявка на поломку оборудования <br/> Устройство: ${selectedValue}<br/>Причина: ${selectedValue2}<br/>Сообщение: '
                '${descriptionController.text}<br/>Код магазина: ${kodController.text}',
      )
        ..from = [MailAddress('Application', 'applications23@mail.ru')]
        ..to = [MailAddress('Recipient Name', 'sophia.romanova0203@mail.ru')]
        ..subject = 'Поломка оборудования';

      final mimeMessage = builder.buildMimeMessage();
      final sendResponse = await client.sendMessage(mimeMessage);
      print('message sent: ${sendResponse.isOkStatus}');
    } on SmtpException catch (e) {
      print('SMTP failed with $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          LocaleKeys.Applications.tr(),
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                if (context.locale == Locale('en')) {
                  context.setLocale(Locale('ru'));
                } else {
                  context.setLocale(Locale('en'));
                }
              },
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
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField2(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      isExpanded: true,
                      hint: Text(
                        LocaleKeys.Select_equipment.tr(),
                        style: TextStyle(fontSize: 16),
                      ),
                      icon: const Icon(
                        Icons.expand_more,
                        color: Colors.black45,
                      ),
                      iconSize: 30,
                      buttonHeight: 60,
                      buttonPadding: const EdgeInsets.only(left: 0, right: 10),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      items: equipmentItems
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Пожалуйста выберите оборудование.';
                        }
                      },
                      onChanged: (value) {},
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField2(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      isExpanded: true,
                      hint: Text(
                        LocaleKeys.The_cause_of_the_breakdown.tr(),
                        style: TextStyle(fontSize: 16),
                      ),
                      icon: const Icon(
                        Icons.expand_more,
                        color: Colors.black45,
                      ),
                      iconSize: 30,
                      buttonHeight: 60,
                      buttonPadding: const EdgeInsets.only(left: 0, right: 10),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      items: cause
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Пожалуйста выберите причину.';
                        }
                      },
                      onChanged: (value) {
                        //Do something when changing the item if you want.
                      },
                      onSaved: (value) {
                        selectedValue2 = value.toString();
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: LocaleKeys.Message.tr(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: kodController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: LocaleKeys.Store_code.tr(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(1, 103, 255, 1.0)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          mailSend(context).then((value) {
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(LocaleKeys.The_application_has_been_sent.tr()),
                            ));
                          });
                        }
                      },
                      child: SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(
                            LocaleKeys.Send.tr(),
                            style: TextStyle(fontSize: 21),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
