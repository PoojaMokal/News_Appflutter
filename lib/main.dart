import 'package:flutter/material.dart';
import 'package:news_app/views/home.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.grey[100],
      ),
      home: Home(),
    );
  }
}
