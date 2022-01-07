import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget{
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball>{
  int _ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: MaterialButton(
          child: Image.asset('images/ball$_ballNumber.png'),
          onPressed: () {
            setState(() {
              _ballNumber = Random().nextInt(4) + 1;
              print("I got clicked");
            });

          },
        ),
    );
  }
  
}
  


