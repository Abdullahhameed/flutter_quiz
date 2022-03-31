import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quiz/answer.dart';
import 'package:flutter_quiz/question.dart';

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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite Animal?',
    ];

    // var questions = [
    //   {
    //     'questionText' : 'What\'s your favorite color?',
    //     'answer' : ['Black', 'Red', 'Green', 'Yellow'],
    //   },
    //   {
    //     'questionText' : 'What\'s your favorite Animal?',
    //     'answer' : ['Rabbit', 'Snakw', 'Yak', 'Cat'],
    //   },
    //   {
    //     'questionText' : 'Who\'s your favorite instructor?',
    //     'answer' : ['Max', 'Mark', 'Green', 'Roy'],
    //   },
    // ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
                questions[_questionIndex]
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            // RaisedButton(
            //     child: Text('Answer 1'),
            //     onPressed: _answerQuestion,
            // ),
            // RaisedButton(
            //     child: Text('Answer 2'),
            //     onPressed: () => print('Answer 2'),
            // ),
            // RaisedButton(
            //     child: Text('Answer 2'),
            //     onPressed: () {
            //       print('Answer 3');
            //     },
            // ),
          ],
        ),
      ),
    );
  }
}
