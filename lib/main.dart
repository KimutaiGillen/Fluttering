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

  mapExample() {
    final names = ['Max', 'Manu', 'Julie'];
    final result = names.map((name) => Text(name)).toList();

    return result;
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
        body: questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[questionIndex]['questionText'] as String,
                  ),
                  ...(questions[questionIndex]['answers'] as List<String>)
                      .map((answer) => Answer(answerQuestion, answer))
                      .toList(),
                ],
              )
            : const Center(
                child: Text(
                    "you have made it to the end of the question!! Congrats, expect results soon!")),
      ),
    );
  }
}
