import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/widgets/mypic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/topbar_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double widthscreen = MediaQuery.of(context).size.width;
    double heightscreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.1,
              0.4,
              0.6,
              0.9,
            ],
            colors: [secondaryColor, primaryColor, darkColor, bgColor],
          ),
        ),
        constraints:
            BoxConstraints(maxWidth: widthscreen, maxHeight: heightscreen),
        child: Center(
            child: Column(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              child: NavBAr(),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Hi 👋',
                        textDirection: TextDirection.ltr,
                        style: GoogleFonts.pacifico(
                            fontSize: 30, color: textcolor),
                      ),
                      Text(
                        "I'm a student and tech enthusiast having a keen interest in coding.\nMy fields of interest are cross platform software development, data visualization, ML, AI .\nParticipation in extracurricular activities such as singing, dance and skit during my academic career\nhas given me skills in communication, teamwork and cooperation.\nI've hands on experience in programming languages such as Java, python, C++, C, R.\nI upload my projects on GitHub",
                        style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(color: primaryColor)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        'assets/my/me (10).png',
                        fit: BoxFit.fill,
                        width: 288,
                        height: 512,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class NavBAr extends StatelessWidget {
  const NavBAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthscreen = MediaQuery.of(context).size.width;
    double heightscreen = MediaQuery.of(context).size.height;
    return Row(
      //  mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: widthscreen * 0.10,
        ),
        RoundedButtonWidget(
          buttonText: "</>Aditya Kumar",
          routenm: "/about",
        ),
        SizedBox(
          width: widthscreen * 0.45,
        ),
        RoundedButtonWidget(
          buttonText: "Home",
          routenm: "/home",
        ),
        SizedBox(
          width: 10,
        ),
        RoundedButtonWidget(
          buttonText: "About",
          routenm: "/about",
        ),
        SizedBox(
          width: 10,
        ),
        RoundedButtonWidget(
          buttonText: "Work",
          routenm: "/work",
        ),
        SizedBox(
          width: 10,
        ),
        RoundedButtonWidget(
          buttonText: "Contact",
          routenm: "/contact",
        ),
      ],
    );
  }
}

class Intro extends StatefulWidget {
  Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 600.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 500),
            viewportFraction: 1,
          ),
          items: [
            Mypic(img: 'assets/my/me (1).png'),
            Mypic(img: 'assets/my/me (2).png'),
            Mypic(img: 'assets/my/me (3).png'),
            Mypic(img: 'assets/my/me (4).png'),
            Mypic(img: 'assets/my/me (5).png'),
            Mypic(img: 'assets/my/me (6).png'),
            Mypic(img: 'assets/my/me (7).png'),
            Mypic(img: 'assets/my/me (8).png'),
            Mypic(img: 'assets/my/me (9).png'),
            Mypic(img: 'assets/my/me (10).png'),
            Mypic(img: 'assets/my/me (11).png'),
            Mypic(img: 'assets/my/me (12).png'),
            Mypic(img: 'assets/my/me (13).png'),
            Mypic(img: 'assets/my/me (14).png'),
          ],
        ),
      ),
    );
  }
}
