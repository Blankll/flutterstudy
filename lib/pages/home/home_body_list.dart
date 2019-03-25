import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/entities/post.dart';

class HomeBodyList extends StatefulWidget {
  @override
  _HomeBodyListState createState() => _HomeBodyListState();
}

class _HomeBodyListState extends State<HomeBodyList> {
  @override
  void initState() {
    super.initState();
    fetch_post()
      .then((onValue) => print(onValue));
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetch_post(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState ==ConnectionState.waiting) {
          return Center(child: Text('loading...'),);
        } else {
          return ListView(
            children: snapshot.data.map<Widget>((item) {
              return Container(
                width: 100.0,
                height: 300.0,
                margin: EdgeInsets.all(7.0),
                decoration:BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(item.imageUrl),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                
                child: Column(
                  children: <Widget>[
                    // 可以作为一个间隔
                    SizedBox(height: 220.0,),
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(height: 5.0,), 
                    Container(
                      padding: EdgeInsets.all(10.0),
                      color: Color.fromRGBO(255, 255, 255, 0.7),
                      child: Text(
                        item.description,
                        style: Theme.of(context).textTheme.subtitle,
                        textDirection: TextDirection.ltr,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          );
        }
      }
    );
  }
  Future<List<Post>> fetch_post() async {
    Response response = await Dio().get("https://resources.ninghao.net/demo/posts.json");
    print('statusCode: ${response.statusCode}');
    List<Post> posts = response.data['posts']
      .map<Post>((item) => Post.fromJson(item)).toList();

    return posts;
  }

}