import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              ':-)    HAPPY DICE    (-:',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Itim',
                fontSize: 26.0,
              ),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  int total;
  both() {
    rightdicenumber = Random().nextInt(6) + 1;
    leftdicenumber = Random().nextInt(6) + 1;
    total = leftdicenumber + rightdicenumber;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset('images/dice$leftdicenumber.png'),
              ),
              onPressed: () {
                setState(() {
                  both(); //1 - 6
                });
              },
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Text(
              'Press the dice to take your turn\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tTOTAL = $total',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Itim',
                fontSize: 19.0,
              ),
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          Expanded(
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset('images/dice$rightdicenumber.png'),
              ),
              onPressed: () {
                setState(() {
                  both();
                  //if +1 is not added than it will show number from 0 to 5 and also dart:math lib is added
                });
              },
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
