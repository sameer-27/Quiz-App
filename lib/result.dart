import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are good :D';
    } else if (resultScore <= 12) {
      resultText = 'You need to go';
    } else if (resultScore <= 16) {
      resultText = 'What are you doing?';
    } else {
      resultText = 'Leave already';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Restart'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
