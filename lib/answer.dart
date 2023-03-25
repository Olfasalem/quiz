import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback answerFunction;

  Answer(this.answerFunction);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: answerFunction,
      child: Text(
        'Response 1',
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}