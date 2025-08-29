import 'dart:math';

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("hello ${randomName()}", style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
      // child: ConstrainedBox(
      //   constraints: BoxConstraints(maxHeight: 200),
      //   child: ElevatedButton(onPressed: () {}, child: Text("click me")),
      // ),
    );
  }

  String randomName() {
    Random rnd = Random();
    int randomNumber = rnd.nextInt(5);
    List<String> names = ['amir', 'ali', 'maryam', 'reza', 'mehdi'];
    return names[randomNumber];
  }
}
