//!

//نلاحظ ان ازرار الاجوبة متلاصقة مع بعضها البعض ونريد ان تكون بينها فراغات
//لذلك في البداية سوف نحيط الالفيتد بوتون ب كونتينر
//وذلك لكي نستفيد من خاصية المارجن لانها غير موجودة في الالفيتد بوتون
//
//

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() x;
  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: ElevatedButton(
          onPressed: x,
          child: Text(
            answerText,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
