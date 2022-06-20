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
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              //  begin: Alignment.topLeft,
              //end: Alignment.bottomRight,
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
        ),
        toolbarHeight: 65,
        backgroundColor: bgColor,
        title: Center(
          child: Row(
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
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0))),
        elevation: 8,
      ),
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
          child: Center(
            child: Text(
              'Hello Gradient!',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Gradient Example'),
      ),
    );
  }
}
