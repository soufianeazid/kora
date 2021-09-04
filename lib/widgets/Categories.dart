import 'package:flutter/material.dart';

Widget getBody() {
  List<Widget> pages = [
    Container(
      child: Center(
        child: Text('featured'),
      ),
    ),
    Container(
      child: Center(
        child: Text('Scores'),
      ),
    ),
    Container(
      child: Center(
        child: Text('fantasy'),
      ),
    ),
    Container(
      child: Center(
        child: Text('top Players'),
      ),
    ),
    Container(
      child: Center(
        child: Text('videos'),
      ),
    ),
  ];
  return IndexedStack(
    //index: _currentIndex,
    children: pages,
  );
}
