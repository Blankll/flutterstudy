import 'package:flutter/material.dart';
import 'package:flutterstudy/main_navigation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData.light(),
      home: MainNavigation()
    );
  }
}