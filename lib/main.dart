

import 'package:flutter/material.dart';

import 'EkranLadowania.dart';

//import 'EkranLadowania.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: Strings.appTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: EkranLadowania()
    );
  }
}

class Strings{
  static const String appTitle = 'Clean Air';
}