import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function handleResetQuize;
  Result(this.resultScore, this.handleResetQuize);

  String get getResultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You aer ... strange!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            getResultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: handleResetQuize, child: Text('Restart Quize'), textColor: Colors.blue,)
        ],
      ),
    );
  }
}
