import 'package:flutter/material.dart';

import './quize.dart';
import './result.dart';
void main() => runApp(MyApp());
const _questions = const [
  {
    'questionText': 'What\'s your favorite color?',
    'answers': [
      {'text':'Black','scores':1}, 
      {'text':'Red','scores':5}, 
      {'text':'White', 'scores':1}
    ]
  },
  {
    'questionText': 'What\'s your favorite animal',
     'answers': [
      {'text':'Cat','scores':6}, 
      {'text':'Dog','scores':5}, 
      {'text':'Lion', 'scores':1}
    ]
  },
  {
    'questionText': 'What\'s your favorit Instructor',
    'answers': [
      {'text':'Max','scores':6}, 
      {'text':'Minko','scores':5}, 
      {'text':'Mosh', 'scores':1}
    ]
  },
];

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore+= score;
    });
    print(_questionIndex);
  }

  void _resetQuize(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length ? Quize( 
          questions: _questions,
          questionIndex: _questionIndex,
          answerQuestion: _answerQuestion,

          ) :
          Result(_totalScore, _resetQuize),
      ),
    );
  }
}
