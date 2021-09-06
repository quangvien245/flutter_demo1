import 'package:flutter/material.dart';
import './question.dart';

// main:
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // return new MyAppState();
    return _MyAppState();
  }
}

//!! Prefix `_` mark the object become `private`
class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = [
    "What's your favorite color?",
    'What\'s is your favorite animal?',
  ];

  void answerQuestion() {
    setState(() {
      questionIndex = (questionIndex + 1) % questions.length;
    });
    print('questionIndex=$questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Firt App'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(child: Text('Answer 2'), onPressed: () => print('Answer 2 chosen!')),
            RaisedButton(child: Text('Answer 3'), onPressed: () => {
              //...
              print('Answer 3 chosen!')
            }),
          ],
        ),
      ),
    );
  }
}
