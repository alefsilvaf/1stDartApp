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
      'questionText': 'Qual dos animais abaixo é um artrópode?',
      'answers': [
        {'text': 'Polvo', 'score': 0},
        {'text': 'Minhoca', 'score': 0},
        {'text': 'Borboleta', 'score': 1},
        {'text': 'Dinossauro', 'score': 0},
      ],
    },
    {
      'questionText': 'Qual artrópode da lista é um animal peçonhento?',
      'answers': [
        {'text': 'Lacraia', 'score': 1},
        {'text': 'Barata', 'score': 0},
        {'text': 'Siri', 'score': 0},
        {'text': 'Gafanhoto', 'score': 0},
      ]
    },
    {
      'questionText': 'Artrópodes são animais com...',
      'answers': [
        {'text': 'Exoesqueleto', 'score': 1},
        {'text': 'Endoesqueleto', 'score': 0}
      ],
    },
    {
      'questionText':
          'Camarão, lagosta e caranguejo fazem parte de qual classe dos artrópodes?',
      'answers': [
        {'text': 'Quilópodes', 'score': 0},
        {'text': 'Crustáceos', 'score': 1},
        {'text': 'Aracnídeos', 'score': 0},
        {'text': 'Nenhuma', 'score': 0}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {});
    _questionIndex = 0;
    _totalScore = 0;
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    print(_totalScore);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz - Artrópodes'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
