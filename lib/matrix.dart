import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/material.dart';

class ImageFilterMatrix extends StatefulWidget {
  @override
  _ImageFilterMatrixState createState() => _ImageFilterMatrixState();
}

class _ImageFilterMatrixState extends State<ImageFilterMatrix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffcedeee),
        appBar: AppBar(
            backgroundColor: Color(0xff0812a1),
            title: Text("How to Apply Filters & Effects")),
        body: Container(
            child: Center(
                child: Column(children: [
          //Define the Matrix
          ImageFiltered(
              imageFilter: ImageFilter.matrix(Float64List.fromList([
                1,
                0.5,
                0.0,
                0.0,
                0.0,
                1,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
              ])),
              child: Image.asset("assets/logo.png", scale: 3.5))
        ]))));
  }
}
