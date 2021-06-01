import 'package:flutter/material.dart';
import 'package:diploma_flutter/nav.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Campus IITU',
        home: Nav(),
      );
  }

}
