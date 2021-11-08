import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = 'done';

    if (resultScore == 5) {
      resultText = 'Your Excelent- Total Right answer is= $resultScore ';
    } else if (resultScore == 4) {
      resultText = 'You are good- Total Right answer is= $resultScore';
    } else if (resultScore == 3) {
      resultText = 'You Pass - Total Right answer is= $resultScore';
    }
    else {
      resultText = 'You are fail- Total Right answer is= $resultScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(
              'Restart Quiz',
            ),
            onPressed: resetQuiz,
            splashColor: Colors.red,
          )
        ],
      ),
    );
  }
}
