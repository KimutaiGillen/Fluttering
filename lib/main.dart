import 'package:flutter/material.dart';
import 'package:udemy_basics/answer.dart';
import 'package:udemy_basics/questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  void answerQuestions() {
    setState(() {
      questionIndex += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['blue', 'red', 'green', 'yellow'],
      },
      {
        'questionText': 'Who\'s your favorite footballer/singer',
        'answers': ['Messi', 'Ronaldo' 'Neymar', 'Beyonce'],
      },
      {
        'questionText': 'What\'s your worst color?',
        'answers': ['blue', 'red', 'green'],
      },
      {
        'questionText': 'Who\'s your least favorite footballer/singer',
        'answers': ['Messi', 'Ronaldo' 'Neymar', 'Beyonce'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("my questions' app")),
        body: Column(
          children: [
            Question(
              questions[questionIndex]['questionText'] as String,
            ),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(answerQuestion, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
