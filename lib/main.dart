import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: House(),
    );
  }
}

class House extends StatelessWidget {
  const House({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        title: Image.asset(
          'assets/images/appbarlogo.png',
          width: 100,
          height: 34,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
            color: Color(0xff131921),
          ),
          SizedBox(
            width: 19,
          ),
          Image.asset(
            'assets/images/filter.png',
            height: 7.06,
            width: 16,
          ),
          SizedBox(
            width: 18,
          ),
        ],
        leading: const Icon(
          Icons.arrow_back,
          color: Color(0xff131921),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                NewWidget(
                  text: 'ВCE',
                  color: Color(0xffF6F6FB),
                  colors: Color(0xff131921),
                ),
                SizedBox(
                  width: 12,
                ),
                NewWidget(
                  text: 'КВЕСТЫ',
                  color: Color(0xff64BDFF),
                  colors: Color(0xffFFFFFF),
                ),
                SizedBox(
                  width: 12,
                ),
                NewWidget(
                  text: 'ЗДАНИЯ',
                  color: Color(0xffFF7C74),
                  colors: Color(0xffFFFFFF),
                ),
                SizedBox(
                  width: 12,
                ),
                NewWidget(
                  text: 'ПАМЯТНИКИ',
                  color: Color(0xff55E3DB),
                  colors: Color(0xffFFFFFF),
                ),
              ],
            ),
            CustomCard(
              image: 'assets/images/image.png',
              texr: 'Бирюлевский',
              text: ' дендропарк',
              qwer: 'assets/images/home.png',
            ),
            CustomCard(
              image: 'assets/images/image2.png',
              texr: 'Прогулка по Москве,',
              text: ' не выходя из дома!',
              qwer: 'assets/images/questions.png',
            ),
            CustomCard(
              image: 'assets/images/image3.png',
              texr: 'Особняк М. К.',
              text: ' Морозовой',
              qwer: 'assets/images/museum.png',
            ),
            CustomCard(
              image: 'assets/images/image4.png',
              texr: 'Прогулка по Москве,',
              text: ' не выходя из дома!',
              qwer: 'assets/images/person.png',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String image;
  final String text;
  final String texr;
  final String qwer;

  const CustomCard({
    Key? key,
    required this.image,
    required this.text,
    required this.texr,
    required this.qwer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Container(
        width: 365,
        height: 101,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 242, 242, 242),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 10, left: 16, bottom: 5, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 40,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 5,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      texr,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        color: Color(0xff131921),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/race.png',
                          height: 12,
                          width: 12,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(' 24 км от вас',
                            style: TextStyle(
                                color: Color(0xff7B7E82),
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 180),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(qwer),
                    SizedBox(
                      height: 12,
                    ),
                    Icon(Icons.favorite),
                  ],
                ),
              ),

              // Container(
              //   width: 175,
              //   height: 119,
              //   // decoration: BoxDecoration(
              //   //   color: Colors.blue,
              //   //   image: AssetImage('assets/images/image.png'),
              //   // ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color colors;

  const NewWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        primary: color,
        // fixedSize: const Size(10, 0),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: colors,
          fontSize: 11,
        ),
      ),
    );
  }
}
