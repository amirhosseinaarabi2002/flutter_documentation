import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            color: Colors.amber,
            child: ListTile(
              title: Text("data"),
              trailing: Icon(Icons.settings_input_component),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("data"),
              trailing: Icon(Icons.settings_input_component),
            ),
          ),
        ],
      ),
    );
  }
}
