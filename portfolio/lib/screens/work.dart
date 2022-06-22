import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'home_screen.dart';

class Work extends StatefulWidget {
  Work({Key? key}) : super(key: key);

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
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
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              child: NavBAr(),
            ),
          ],
        )),
      ),
    );
  }
}
