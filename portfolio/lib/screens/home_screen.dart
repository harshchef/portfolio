import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';

import 'package:portfolio/widgets/topbar_button.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

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
      body: Center(
        child: Container(
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
              Container(
                child: NavBAr(),
              ),
            ],
          )),
        ),
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
        RoundedButtonWidget(buttonText: "</>Aditya Kumar"),
        SizedBox(
          width: widthscreen * 0.45,
        ),
        RoundedButtonWidget(buttonText: "Home"),
        SizedBox(
          width: 10,
        ),
        RoundedButtonWidget(buttonText: "About"),
        SizedBox(
          width: 10,
        ),
        RoundedButtonWidget(buttonText: "Work"),
        SizedBox(
          width: 10,
        ),
        RoundedButtonWidget(buttonText: "Contact"),
      ],
    );
  }
}
