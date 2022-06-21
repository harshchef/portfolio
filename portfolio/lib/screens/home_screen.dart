import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/widgets/mypic.dart';

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
            child: SingleChildScrollView(
          child: Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: NavBAr(),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
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
