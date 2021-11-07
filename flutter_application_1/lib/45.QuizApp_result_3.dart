//!
//الان سوف نستورد ملف الماين لكي نستطيع استخدام متغيرات الالوان هنا
//لكي نغير الالوان علشان تضبط مع الثيم الاسود والابيض
//الان نضيف الكولور الى الى كل التكست
//الان اي شي نعمل لونه اسود سوف يظهر في الدارك ثيم باللون الابيض والعكس مع
//اللون الابيض سوف يظهر في الدارك ثيم باللون الاسود
//
//
//

import 'package:flutter/material.dart';
import '45.QuizApp_main_3.dart';

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
            style:
                TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: b),
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
