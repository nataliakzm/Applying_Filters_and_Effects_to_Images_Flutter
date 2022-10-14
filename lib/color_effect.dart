import 'dart:ui';
import 'package:flutter/material.dart';

class ColorImage extends StatefulWidget {
  @override
  _ColorImageState createState() => _ColorImageState();
}

class _ColorImageState extends State<ColorImage> {
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
              //Color your asset here
              ColorFiltered(
                  colorFilter:
                      const ColorFilter.mode(Colors.grey, BlendMode.saturation),
                  child: Image.asset("assets/logo.png"))
            ]))));
  }
}
