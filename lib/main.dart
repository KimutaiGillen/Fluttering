import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
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
      print(questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'who is the president of USA currently?',
      'who is the king of Britain at the moment?',
      'who is the previous president of Kenya?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("my questions' app")),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
                onPressed: answerQuestion, child: const Text("answer 1")),
            ElevatedButton(
                onPressed: answerQuestion, child: const Text("answer 2")),
            ElevatedButton(
                onPressed: (() => print("answer3 chosen")),
                child: const Text("answer 3")),
            ElevatedButton(
                onPressed: answerQuestion, child: const Text("answer 4")),
          ],
        ),
      ),
    );
  }
}
