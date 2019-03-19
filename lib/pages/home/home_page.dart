import 'package:flutter/material.dart';
import 'package:flutterstudy/pages/home/home_body_list.dart';
import 'package:flutterstudy/pages/home/home_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: HomeBodyList(),),
    );
  }
}