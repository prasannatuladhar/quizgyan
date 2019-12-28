import 'package:flutter/material.dart';
import 'home_page.dart';
import 'constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Center(child: Text('QuizGyan')),),
          body:HomePage(),
      ),

    );
  }
}



