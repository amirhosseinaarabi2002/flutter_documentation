import 'package:flutter/material.dart';

class MyMaterialBanner extends StatefulWidget {
  const MyMaterialBanner({super.key});

  @override
  State<MyMaterialBanner> createState() => _MyMaterialBannerState();
}

class _MyMaterialBannerState extends State<MyMaterialBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: MaterialBanner(
          
          backgroundColor: Colors.cyanAccent,leading: Icon(Icons.add_ic_call_outlined),
          content: Text("material banner"),
          actions: [
            TextButton(onPressed: () {}, child: Text("open")),
            TextButton(onPressed: () {}, child: Text("close")),
          ],
        ),
      ),
    );
  }
}
