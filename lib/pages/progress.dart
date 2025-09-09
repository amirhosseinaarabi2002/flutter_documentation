import 'dart:async';

import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  double progress = 0;

  void startTimer() {
    Timer.periodic(Duration(seconds: 2), (Timer timer) {
      setState(() {
        if (progress == 1) {
          timer.cancel();
        } else {
          progress += 0.2;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: CircularProgressIndicator(
    //     backgroundColor: Colors.amber,
    //     valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
    //     strokeWidth: 10,
    //   ),
    // );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: CircularProgressIndicator(value: progress),
              ),
              Text(progress.toString()),
            ],
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              setState(() {
                progress = 0;
              });
              startTimer();
            },
            child: Text("start"),
          ),
        ],
      ),
    );
  }
}
