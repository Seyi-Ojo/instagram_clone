import 'package:flutter/material.dart';
import 'insta_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryIconTheme: const IconThemeData(color: Colors.black),
        primaryTextTheme: const TextTheme(
          subtitle1: TextStyle(color: Colors.black, fontFamily: "Aveny"),
        ),
        textTheme: const TextTheme(
          subtitle1: TextStyle(color: Colors.black),
        ),
      ),
      home: InstaHome(),
    );
  }
}
