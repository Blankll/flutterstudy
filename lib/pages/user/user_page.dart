import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('LOGIN'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            )
          ],
        ),
      )),
    );
  }
}