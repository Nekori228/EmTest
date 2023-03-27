import 'package:flutter/material.dart';

class news_five extends StatelessWidget {
  const news_five({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/news5_big.png'),
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
                    'INsport – спортивные онлайн-тренировки с коллегами',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontFamily: "SourceSansPro"),
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
                                'Больше месяца назад для всех сотрудников АО «Новая Мода» был запущен проект '),
                        TextSpan(
                          text: 'INsport',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(text: ', главной целью которого является '),
                        TextSpan(
                          text:
                              'поддержание здоровья и физической формы сотрудников ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(text: 'а также '),
                        TextSpan(
                          text: 'формирование общего командного духа.' + '\n\n',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: '2 тренера, 9 тренировок, 525 участников ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                            text:
                                '– вот результаты первого месяца совместных тренировок с коллегами.' +
                                    '\n\n'),
                        TextSpan(
                          text: 'Расписание:' + '\n\n',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                            text: '17.04 (понедельник) 17:00-18:00 – функциональный тренинг с акцентом на мышцы верхнего плечевого пояса, пресса и спины' +
                                '\n\n' +
                                '20.04 (четверг) 10:00-11:00 – йога: разминочный комплекс Сурья Намаскар – Приветствие солнцу' +
                                '\n\n' +
                                '24.04 (понедельник) 17:00-18:00 – функциональный тренинг с акцентом на мышцы пресса и ног' +
                                '\n\n' +
                                '27.04 (четверг) 10:00-11:00 – расслабляющая йога' +
                                '\n\n'),
                        TextSpan(
                          text:
                              'Уровень физической подготовки практикующих: любой.' +
                                  '\n\n',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: 'Тренировки проведут:' + '\n\n',
                        ),
                        TextSpan(
                          text:
                              'Функциональный тренинг – Светлана Ловдина, сертифицированный тренер групповых программ и функционального тренинга.' +
                                  '\n\n',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text:
                              'Йога – Анастасия Старостина, сертифицированный инструктор по хатха-йоге.' +
                                  '\n\n',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text:
                              'Для того, чтобы принять участие в спортивных занятиях, необходимо сообщить менеджеру.  Приглашение на подключение придет в течение нескольких дней на почту Присоединяйтесь к совместным тренировкам. Включайте камеры, чтобы видеть и поддерживать друг друга!' +
                                  '\n',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Carousel()),
          ],
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;

  List<String> images = [
    "assets/images/news_carusel1.png",
    "assets/images/news_carusel2.png",
    "assets/images/news_carusel3.png",
  ];

  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: PageView.builder(
              itemCount: images.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider(images, pagePosition, active);
              }),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(images.length, activePage))
      ],
    );
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(images[pagePosition]))),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(15),
      child: Image.network(images[pagePosition]),
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
