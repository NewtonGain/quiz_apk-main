import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

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
      'questionText': ' What is your favorite foods?',
      'answers': [
        {'text': 'birani', 'score': 0},
        {'text': 'plain rice', 'score': 1},
        {'text': 'fry', 'score': 0},
        {'text': 'salad', 'score': 0},
      ],
    },
    {
      'questionText': ' What is your favorite color?',
      'answers': [
        {'text': 'blue', 'score': 1},
        {'text': 'red', 'score': 0},
        {'text': 'black', 'score': 0},
        {'text': 'white', 'score': 0},
      ],
    },
    {
      'questionText':
          ' What is your favorite animal?',
      'answers': [
        {'text': 'tiger', 'score': 1},
        {'text': 'lion', 'score': 0},
        {'text': 'fox', 'score': 0},
        {'text': 'elephant', 'score': 0},
      ],
    },
    {
      'questionText': ' What is your favorite sports?',
      'answers': [
        {'text': 'badminton', 'score': 0},
        {'text': 'cricket', 'score': 1},
        {'text': 'football', 'score': 0},
        {'text': 'ragbi', 'score': 0},
      ],
    },
    {
      'questionText':
          ' Who is your favorite tech person?',
      'answers': [
        {'text': 'bill gates', 'score': 0},
        {'text': 'mark zukerbaerg', 'score': 1},
        {'text': 'elon mask', 'score': 0},
        {'text': 'jeff bejos', 'score': 0},
      ],
    },
    {
      'questionText': ' What is your favorite country?',
      'answers': [
        {'text': 'BD', 'score': 1},
        {'text': 'UK', 'score': 0},
        {'text': 'EU', 'score': 0},
        {'text': 'AU', 'score': 0},
      ],
    },
  ];
  var _answerIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _answerIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _answerIndex = _answerIndex + 1;
    });

    print(_answerIndex);

    if (_answerIndex < _questions.length) {
      print('ÿour have more questions!');
    } else {
      print("you have done");
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("কুইজ টেস্ট"),
        ),
        body: _answerIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questions: _questions,
                answerIndex: _answerIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
