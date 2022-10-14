import 'dart:ui';
import 'package:flutter/material.dart';

class BlurImage extends StatefulWidget {
  @override
  _BlurImageState createState() => _BlurImageState();
}

class _BlurImageState extends State<BlurImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffcedeee),
        appBar: AppBar(
            backgroundColor: Color(0xff0812a1),
            title: Text("How to Apply Filters & Effects")),
        body: Container(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              //Blur an Image asset
              ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                  child: Image.asset("assets/logo.png"))
            ]))));
  }
}
