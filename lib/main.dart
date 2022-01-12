import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: Ask(),
      ),
    ),
  );
}

class Ask extends StatefulWidget {

  @override
  State<Ask> createState() => _Ask();
}

class _Ask extends State<Ask> {
  int numberBall = 1;

  void _clik() {
    setState((){
      var random = new Random();
        numberBall = random.nextInt(5) +1;
    },);
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: TextButton(
                onPressed: (){
                  _clik();
                },
                child: Image.asset(
                  'images/ball$numberBall.png',
                    width: deviceWidth * 0.70,
                    height: deviceHeight * 0.70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
