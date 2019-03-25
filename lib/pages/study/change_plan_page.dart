import 'package:flutter/material.dart';

class ChangePlanPage extends StatefulWidget {
  @override
  _ChangePlanPageState createState() => _ChangePlanPageState();
}

class _ChangePlanPageState extends State<ChangePlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习计划'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '选择单词本',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
            )
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Text('基础一')
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}