//!
//سوف نضع هذا الكود مكان اي لون عملناه بالمتغير بي او دبليو
// isSwitched == false ? Colors.white : Colors.black
//

import 'package:flutter/material.dart';
import '46.QuizApp_main_4.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 30,
            color: isSwitched == false ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
