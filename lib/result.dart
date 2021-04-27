import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultFrase {
    String resultText;
    if (resultScore >= 10) {
      resultText = 'Nota D!';
    } else if (resultScore >= 20) {
      resultText = 'Nota C!';
    } else if (resultScore >= 30) {
      resultText = 'Nota B!';
    } else {
      resultText = 'Nota A!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultFrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
