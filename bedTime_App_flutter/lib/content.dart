import 'package:flutter/material.dart';
import 'package:bedtime_stories_app/config/configurations.dart';

class ContentScreen extends StatelessWidget {
  var index;
  ContentScreen({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF03174F),
        title: Text(listItems[index]['name']),
      ),
      body: Content(index: index),
    );
  }
}

class Content extends StatelessWidget {
  var index;
  Content({this.index});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              listItems[index]['iconPath'],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            contentList[index],
            style: TextStyle(color: Colors.white, fontSize: 17),
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}
