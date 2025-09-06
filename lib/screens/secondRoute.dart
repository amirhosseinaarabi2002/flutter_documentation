import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  static String routeName = "/second";
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final String value = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value, style: TextStyle(fontSize: 40)),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("back"),
            ),
          ),
        ],
      ),
    );
  }
}
