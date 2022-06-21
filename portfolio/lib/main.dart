import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/work.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio",
      theme: ThemeData(
        // primaryColor: primaryColor,
        //scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.oswaldTextTheme(Theme.of(context).textTheme),
      ),
      home: HomeScreen(),
      routes: {
        "/home": (context) => HomeScreen(),
        '/about': (context) => About(),
        '/contact': (context) => Contact(),
        '/work': (context) => Work(),
      },
    );
  }
}
