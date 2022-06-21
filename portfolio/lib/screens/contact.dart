import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'home_screen.dart';

class Contact extends StatefulWidget {
  Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
            ],
          ),
        )),
      ),
    );
  }
}
