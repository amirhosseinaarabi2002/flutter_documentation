import 'package:flutter/material.dart';

class MyClass extends StatefulWidget {
  const MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  static const String imageURL = "assets/images/moon.png";
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      scaleEnabled: true,
      minScale: 0.3,
      maxScale: 4,
      alignment: Alignment.center,
      child: Image.asset(imageURL, width: 200, height: 200,),
    );
  }
}
