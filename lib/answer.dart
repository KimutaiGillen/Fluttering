import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  String answer;
  Answer(this.selectHandler, this.answer, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(3),
      child: ElevatedButton(onPressed: selectHandler, child: Text(answer)),
    );
  }
}
