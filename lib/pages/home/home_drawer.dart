import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  final String userAvatar = 'http://apitrans.geekfun.club/statics/images/upload/2018-11-16/154237510990031.jpeg';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('SEVEN'),
            accountEmail: Text('zilisheng1996@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(userAvatar),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(userAvatar),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.lightBlue.withOpacity(0.6),
                  BlendMode.hardLight
                )
              )
            ),
          ),
          ListTile(
            title: Text('message'),
            trailing: Icon(Icons.message, color: Colors.black12),
          )
        ],
      )
    );
  }
}