//!
//سوف نضع هذا الكود مكان اي لون عملناه بالمتغير بي او دبليو
// isSwitched == false ? Colors.white : Colors.black
//
//

import 'package:flutter/material.dart';
import '46.QuizApp_main_4.dart';

class Result extends StatelessWidget {
  final Function() q;
  final int resultScore;

  Result(this.q, this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 70) {
      resultText = 'you are awesome !';
    } else if (resultScore >= 40) {
      resultText = 'pretty likable !';
    } else {
      resultText = 'you are so bad !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Score is$resultScore',
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: isSwitched == false ? Colors.white : Colors.black),
          ),
          Text(
            //'$resultScore',
            resultPhrase,
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: q,
              child: Text(
                'Restart The App',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ))
        ],
      ),
    );
  }
}
