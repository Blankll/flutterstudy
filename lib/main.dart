import 'package:flutter/material.dart';
import 'package:flutterstudy/main_navigation.dart';
import 'package:flutterstudy/pages/home/home_page.dart';
import 'package:flutterstudy/pages/login/login_page.dart';

void main() => runApp(new MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[600],
        primarySwatch: Colors.lightGreen
      ),
      home: MainNavigation(),
      routes: {
        '/home': (context) => MyApp(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}