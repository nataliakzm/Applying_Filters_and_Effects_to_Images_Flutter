import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/material.dart';

class Matrix4Rotation extends StatefulWidget {
  @override
  _Matrix4RotationState createState() => _Matrix4RotationState();
}

class _Matrix4RotationState extends State<Matrix4Rotation> {
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
              //Rotate the Matrix of the asset
              ImageFiltered(
                  imageFilter:
                      ImageFilter.matrix(Matrix4.rotationZ(0.2).storage),
                  child: Image.asset("assets/logo.png", scale: 6)),
            ]))));
  }
}
