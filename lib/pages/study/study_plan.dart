import 'package:flutter/material.dart';

class StudyPlan extends StatefulWidget {
  @override
  _StudyPlanState createState() => _StudyPlanState();
}

class _StudyPlanState extends State<StudyPlan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: <Widget>[
            // title
            Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
              'My study',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
            ),
          // plan box
          Card(
            margin: EdgeInsets.all(30.0),
            elevation: 4.0,
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('http://apitrans.geekfun.club/statics/images/upload/2018-11-16/154237510990031.jpeg'),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          ],
        ),
    );
  }
}