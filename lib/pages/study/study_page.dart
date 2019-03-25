import 'package:flutter/material.dart';
import 'package:flutterstudy/pages/study/new_plan.dart';
import 'package:flutterstudy/pages/study/study_plan.dart';

class StudyPage extends StatefulWidget {
  @override
  _StudyPageState createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  Widget _centContent = new NewPlan();
  @override
  Widget build(BuildContext context) {
    if (false) {
      setState(() {
        _centContent = StudyPlan();
      });
    }
    return Scaffold(
      body: _centContent
    );
  }
}