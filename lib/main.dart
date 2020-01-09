import 'package:flutter/material.dart';
import 'package:dicee/src/dicee.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: DiceePage(),
    );
  }
}
