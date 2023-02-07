import 'package:flutter/material.dart';
import 'dart:math';

class DiceWidget extends StatefulWidget {
  const DiceWidget({super.key});

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  int leftDiceNumber = 1, rightDiceNumber = 6;

  int rollingDice() {
    return Random().nextInt(6) + 1;
  }

  void changeDice() {
    setState(() {
      rightDiceNumber = rollingDice();
      leftDiceNumber = rollingDice();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextButton(
          onPressed: () {
            changeDice();
          },
          child: Image.asset("images/dice$leftDiceNumber.png"),
        )),
        Expanded(
            child: TextButton(
          onPressed: () {
            changeDice();
          },
          child: Image.asset("images/dice$rightDiceNumber.png"),
        )),
      ],
    );
  }
}
