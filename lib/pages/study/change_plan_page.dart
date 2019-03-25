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
                Card(
                  elevation: 4.0,
                  child: Container(
                    width: 100.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('http://apitrans.geekfun.club/statics/images/upload/2018-11-16/154237510990031.jpeg'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 80.0,
                        ),
                        Text('基础一')
                      ],
                    )
                  ),
                )
              ],
            ),
          ),
          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              Divider(
                height: 56.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 10.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.pink,
                  elevation: 8.0,
                  child: Icon(
                    Icons.add,
                    size: 30.0,
                    color: Colors.blue[100],
                  ),
                  onPressed: () {

                  },
                ),
              )
            ],
          ),
          // 设置学习计划
          Container(
            child: Slider(
              value: 10,
              min: 0,
              max: 100,
              divisions: 1,
              onChanged: (changedValue) {
                
              },
            ),
          )
        ],
      )
    );
  }
}