//!
//سوف نعمل استيراد لملف الماين
//وسوف نعطي التكست في كوسشن تكست اي نص السؤال اللون الاسود
//
//

import 'package:flutter/material.dart';
import '45.QuizApp_main_3.dart';

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
        style: TextStyle(fontSize: 30, color: b, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
