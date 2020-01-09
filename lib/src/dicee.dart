import 'package:flutter/material.dart';
import 'dart:math';

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int _leftDiceNumber = 1;
  int _rightDiceNumber = 5;

  void _randomize() {
    setState(() {
      _leftDiceNumber = Random().nextInt(6) + 1;
      _rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        title: Text('Diceee'),
        centerTitle: true,
      ),
      body:
          _diceePage(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _diceePage() {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                child: Image.asset('images/dice$_leftDiceNumber.png'),
                onPressed: () => _randomize(),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                child: Image.asset('images/dice$_rightDiceNumber.png'),
                onPressed: () => _randomize(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
