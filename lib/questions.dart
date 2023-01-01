import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  final String questiontext;

  const Question(this.questiontext, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(15),
        child: Text(
          questiontext,
          style: const TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ));
  }
}
