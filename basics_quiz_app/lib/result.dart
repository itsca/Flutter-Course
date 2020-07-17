import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function handleRestart;
  Result(this.handleRestart);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            'You did it!',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(onPressed: handleRestart, child: Text('Restart Quiz'))
      ],
    );
  }
}
