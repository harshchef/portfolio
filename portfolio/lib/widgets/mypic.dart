import 'package:flutter/material.dart';

class Mypic extends StatelessWidget {
  final String img;
  Mypic({required this.img});
  @override
  Widget build(BuildContext context) {
    double widthscreen = MediaQuery.of(context).size.width;
    double heightscreen = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        // height: 600,
        //   width: widthscreen,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
