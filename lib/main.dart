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
      'Who is the president of USA currently?',
      'Who is the king of Britain at the moment?',
      'Who is the previous president of Kenya?',
      'Who is the previous president of Kenyan?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("my questions' app")),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            Answer(answerQuestion),
            Answer(answerQuestions),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
