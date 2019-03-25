import 'package:flutter/material.dart';
import 'package:flutterstudy/entities/user.dart';
import 'package:flutterstudy/models/user_model.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name;
  String _password;
  List<Widget> _messages = [];

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
          User user = new User(name: _name, password: _password);
          UserModel.login(user)
          .then((res) => Navigator.of(context).pushNamed('/home'))
          .catchError((err) {
            setState(() {
              _messages.add(Text(err.toString()));
            });
          });
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

    final errorSHow = Container(
      height: 100.0,
      child: ListView(
        children: _messages
      )
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
            onChanged: (String input) {
              setState(() {
                _name =input;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'password',
              hintText: 'plese input your password',
              prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
            onChanged: (String input) {
              setState(() {
                _password = input;
              });
            },
          ),
          loginButton,
          forgotLabel,
          errorSHow
        ],
      )
    );
  }
}