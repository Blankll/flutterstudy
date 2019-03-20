import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final loginButton = Container(
      // padding: EdgeInsets.symmetric(vertical: 16.0),
      width: 250.0,
      height: 50.0,
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/home');
        },
        // padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );
    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {

      },
    );
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0),
            ),
            width: 100.0,
            height: 70.0,
            margin: EdgeInsets.only(top: 70.0),
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: 'login name',
              hintText: 'plese input login name',
              prefixIcon: Icon(Icons.person)
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'password',
              hintText: 'plese input your password',
              prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
          ),
          loginButton,
          forgotLabel
        ],
      )
    );
  }
}