import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Chip(
      //   deleteIcon: Icon(Icons.cancel),
      //   onDeleted: () {

      //   },
      //   label: Text("data"),
      //   avatar: CircleAvatar(
      //     backgroundColor: Colors.amber,
      //     child: Icon(Icons.add_ic_call_outlined),
      //   ),
      // ),
      // child: ChoiceChip(
      //   label: Text("data"),
      //   selected: selected,
      //   onSelected: (value) {
      //     setState(() {
      //       selected = !selected;
      //     });
      //   },
      // ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.amber,
              height: 300,
              alignment: Alignment.center,
              child: Text("data"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ActionChip(
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(30)),
                avatar: Icon(Icons.add_ic_call),
                label: Text("data"),
                labelPadding: EdgeInsets.all(8),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
