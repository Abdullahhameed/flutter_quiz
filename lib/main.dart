import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quiz/result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }
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
      'questionText' : 'What\'s your favorite color?',
      'answers' :
      [
        {'text' : 'Black', 'score' : 10},
        {'text' : 'Red', 'score' : 5},
        {'text' : 'Green', 'score' : 3},
        {'text' : 'Yellow', 'score' : 1}
      ],
    },
    {
      'questionText' : 'What\'s your favorite Animal?',
      'answers' :
      [
        {'text' : 'Rabbit', 'score' : 10},
        {'text' : 'Snake', 'score' : 6},
        {'text' : 'Yak', 'score' : 4},
        {'text' : 'Cat', 'score' : 2}
      ],
    },
    {
      'questionText' : 'Who\'s your favorite instructor?',
      'answers' :
      [
        {'text' : 'Max', 'score' : 10},
        {'text' : 'Mark', 'score' : 9},
        {'text' : 'Green', 'score' : 7},
        {'text' : 'Roy', 'score' : 6}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    // _totalScore = _totalScore + score;
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // if(_questionIndex < _questions.length)
    // {
    //   print('we have more question');
    // }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,
        ) : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
