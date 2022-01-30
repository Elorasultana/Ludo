import 'dart:math';

import 'package:flutter/material.dart';

class RandomDice extends StatefulWidget {
  @override
  State<RandomDice> createState() => _RandomDiceState();
}

class _RandomDiceState extends State<RandomDice> {
  int number1 = 2;
  int number2 = 2;
  int count1 = 0;
  int count2 = 0;
  int bottomcount1 = 0;
  int bottomcount2 = 0;
  var rand = Random();

  void getRandomvalue1() {
    setState(() {
      number1 = rand.nextInt(6);
      count1 = count1 + number1 + 1;
    });
  }

  void getRandomvalue2() {
    setState(() {
      number2 = rand.nextInt(6);
      count2 = count2 + number2 + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Dice'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'Assets/$number1.png',
                width: 150,
                height: 150,
              ),
              Image.asset(
                'Assets/$number2.png',
                width: 150,
                height: 150,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomcount1 < 5
                  ? ElevatedButton(
                      onPressed: () {
                        bottomcount1++;
                        getRandomvalue1();
                      },
                      child: Text('Player 1'),
                    )
                  : Container(),
              bottomcount2 < 5
                  ? ElevatedButton(
                      onPressed: () {
                        bottomcount2++;
                        getRandomvalue2();
                      },
                      child: const Text('Player 2'))
                  : Container(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                count1.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                count2.toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          count1 > count2
              ? Text('Player1 is winer')
              : count1 == count2
                  ? Text('Match draw')
                  : Text('Player2 winer'),
        ],
      )),
    );
  }
}
