//import 'dart:html';

import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Qual a capital de Minas Gerais?',
      'answers': [
        {'text': 'Belo Horizonte', 'score': 10},
        {'text': 'Passos', 'score': 1},
        {'text': 'Campinas', 'score': 1},
        {'text': 'Guaxupé', 'score': 1},
      ],
    },
    {
      'questionText': 'Onde está localizada a Torre Eiffel?',
      'answers': [
        {'text': 'Rio de Janeiro', 'score': 1},
        {'text': 'Vancouver', 'score': 1},
        {'text': 'Paris', 'score': 10},
        {'text': 'Dinamarca', 'score': 1},
      ]
    },
    {
      'questionText': 'O Pré-Sal fica no litoral...',
      'answers': [
        {'text': 'Argentino', 'score': 1},
        {'text': 'Espanhol', 'score': 1},
        {'text': 'Norueguês', 'score': 1},
        {'text': 'Brasileiro', 'score': 10}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print('Sei lá o que!');
    } else {
      print('Sei o que lá');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore),
      ),
    );
  }
}
