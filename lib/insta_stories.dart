// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  InstaStories({Key? key}) : super(key: key);

  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: const <Widget>[
          Icon(Icons.play_arrow),
          Text(
            "Watch All",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                ),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            index == 0
                ? Positioned(
                    right: 10.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 10.0,
                      child: Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
