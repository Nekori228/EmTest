import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';

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
                      LocaleKeys.Safety_standards_Safe_deposit.tr(),
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.The_code.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.The_safe.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.The_key.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.Reception.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.Reserve.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.The_inventories.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.At.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.After.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.A_duplicate.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.It_is_allowed.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.The_safe_must.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            LocaleKeys.In_case.tr(),
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
