import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey[200],
          appBar: AppBar(
            title: Text('Ask me anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int randomAnswer = 1;

  void getRandomAswer (){
    setState((){
      randomAnswer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: ((){
          getRandomAswer();
        }),
        child: Image(
          image: AssetImage('images/ball$randomAnswer.png'),
        ),
      ),
    );
  }
}
