import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("tabbar"),
          backgroundColor: Colors.amber,
          bottom: TabBar(
            // indicator: BoxDecoration(
              
            //   borderRadius: BorderRadius.circular(50),
              
            //   color: Colors.blueAccent
            // ),
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions)),
              Tab(icon: Icon(Icons.transit_enterexit)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.flight),
            Icon(Icons.directions),
            Icon(Icons.transit_enterexit),
          ],
        ),
      ),
    );
  }
}
