import 'package:flutter/material.dart';

class Firstroute extends StatefulWidget {
  static String routeName = "/";
  const Firstroute({super.key});

  @override
  State<Firstroute> createState() => _FirstrouteState();
}

class _FirstrouteState extends State<Firstroute> {
  String value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first page", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              style: TextStyle(fontSize: 20),
              onChanged: (String text) {
                value = text;
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => SecondRoute(),
                //   ),
                // );

                Navigator.pushNamed(context, "/second", arguments: value);
              },
              child: Text("open route"),
            ),
          ),
        ],
      ),
    );
  }
}
