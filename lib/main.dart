import 'package:flutter/material.dart';
import 'package:ludo/random_dice.dart';

void main(List<String> args) {
  runApp(MyCode());
}

class MyCode extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:RandomDice(),
    );
  }
}