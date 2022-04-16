import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
    title: const Center(child: Text("Dice")),
    ),
    backgroundColor: Colors.blue,
    body:const dice()
    )
    );
  }
}

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  int leftdice=6,rightdice=6;
  void changDice(){
    leftdice = (Random().nextInt(6)+1);
    rightdice = (Random().nextInt(6)+1);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(
      child: Row(

            children: [
              Expanded(
                flex: 1,
                child:
                TextButton(
                  onPressed: () {
                    setState(() {
                      changDice();
                    });
                  },
                  child:SizedBox(
                    height: 100,
                    width: 100,
                    child: Image(image: AssetImage('images/dice$leftdice.png')) ,
                ),
              ),
              ),
              Expanded(
                flex: 1,
                child:
                TextButton(
                  onPressed: () {
                    setState(() {
                      changDice();
                    });
                  },
                  child:SizedBox(
                    height: 100,
                    width: 100,
                    child: Image(image: AssetImage('images/dice$rightdice.png')) ,
                  ),
                ),
              )
            ],
      ),
      ),
    );
  }
}
