import 'package:flutter/material.dart';
import 'package:flutterstudy/pages/forcus/forcus_page.dart';
import 'package:flutterstudy/pages/home/home_drawer.dart';
import 'package:flutterstudy/pages/home/home_page.dart';
import 'package:flutterstudy/pages/study/study_page.dart';
import 'package:flutterstudy/pages/user/user_page.dart';

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;
  List<Widget> bottomBars =List();
  @override
  void initState() {
    bottomBars.add(HomePage());
    bottomBars.add(StudyPage());
    bottomBars.add(ForcusPage());
    bottomBars.add(UserPage());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEVEN'),
        centerTitle: true,
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          )
        ],
      ),
      body: bottomBars[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Study')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            title: Text('Forcus')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('User')
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      drawer: HomeDrawer(),
    );
  }
}