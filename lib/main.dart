import 'package:flutter/material.dart';
import 'dart:math';

void main(){
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

class Ask extends StatefulWidget{
  @override()
  _Ask CreateState() => Ask(),
}

class _Ask extends State<DicePage>{
  int NumberBall = 1,
}