import 'package:flutter/material.dart';
import '../screens/firstRoute.dart';
import '../screens/secondRoute.dart';

final Map<String, WidgetBuilder> routes = {
  Firstroute.routeName: (context) => Firstroute(),
  SecondRoute.routeName: (context) => SecondRoute(),
};
