import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultFrase {
    String resultText;
    if (resultScore == 1) {
      resultText = 'Você acertou somente 1 alternativa!';
    } else if (resultScore == 2) {
      resultText = 'Pa-ra-béns! Nota dó!';
    } else if (resultScore == 3) {
      resultText = '3 não é 4...';
    } else if (resultScore == 4) {
      resultText = 'Gabaritou! Não fez mais que sua obrigação.';
    } else {
      resultText = 'Zero.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultFrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
