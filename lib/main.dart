import 'package:flutter/material.dart';
import 'package:flutter_imagefiltered_demo/color_effect.dart';
import 'package:flutter_imagefiltered_demo/blur_Image.dart';
import 'package:flutter_imagefiltered_demo/matrix.dart';
import 'package:flutter_imagefiltered_demo/matrix_rotation.dart';

void main() {
  runApp(ImageEditor());
}

class ImageEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffcedeee),
        appBar: AppBar(
            backgroundColor: Color(0xff0812a1),
            title: Text('How to Apply Filters & Effects'),
            centerTitle: true),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      // First Button to Blur Images
                      Image.asset("assets/logo.png", scale: 4),
                      // Space before Buttons
                      SizedBox(height: 130),
                      OutlinedButton(
                          child: Text('Blur an Image',
                              style: TextStyle(color: Colors.black)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => BlurImage()));
                          },
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                  width: 1.0, color: Color(0xff0812a1)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)))),
                      // Space between Buttons
                      SizedBox(height: 10),
                      // Second Button for Image Matrix
                      OutlinedButton(
                          child: Text('Image Matrix',
                              style: TextStyle(color: Colors.black)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ImageFilterMatrix()));
                          },
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                  width: 1.0, color: Color(0xff0812a1)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)))),
                      // Space between Buttons
                      SizedBox(height: 10),
                      // Third Button for Matrix Rotation
                      OutlinedButton(
                          child: Text('Matrix Rotation',
                              style: TextStyle(color: Colors.black)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Matrix4Rotation()));
                          },
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                  width: 1.0, color: Color(0xff0812a1)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)))),
                      // Space between Buttons
                      SizedBox(height: 10),
                      // Last Button to change color
                      OutlinedButton(
                          child: Text('Color Effect',
                              style: TextStyle(color: Colors.black)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ColorImage()));
                          },
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                  width: 1.0, color: Color(0xff0812a1)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)))),
                    ]))));
  }
}
