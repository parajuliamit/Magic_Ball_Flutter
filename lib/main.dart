import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Magic Ball'),
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
          ),
          body: MagicBall(),
          backgroundColor: Colors.blueGrey,
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int randomNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                randomNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$randomNumber.png'),
          ),
        ),
      ),
    );
  }
}
