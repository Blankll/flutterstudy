import 'package:flutter/material.dart';

class NewPlan extends StatefulWidget {
  @override
  _NewPlanState createState() => _NewPlanState();
}

class _NewPlanState extends State<NewPlan> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40.0),
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40.0),
            child: Text('添加学习计划，开始学习！'),
          ),
          Container(
            height: 200.0,
            width: 300.0,
            child: IconButton(
              iconSize: 100.0,
              color: Colors.red,
              icon: Icon(
                Icons.add_circle,
                color: Colors.green,
              ), onPressed: () {
                Navigator.pushNamed(context, '/study/books');
              },
            )
          ),
          // Text('添加学习计划')
        ],
      )
    );
  }
}