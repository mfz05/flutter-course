//!الشرح يبدا من ملف الماين 
//! 43.QuizApp_main_1.dart
//!هذا شرح الدروس من Quiz App 1 الى Quiz App 4
//!اما الدرس الخامس شرحه في الملفات رقم 44 Quiz App 5

//الان اصبح هذا الكلاس جاهز وكل ماعلينا ان نفعله هو ان ننشئ اوبجكت من هذا الكلاس
//في اي ملف اخر وعند الاستدعاء يتم ارجاع كونتينر عليها ازرار الاجوبة
//الان احتاج  انه اضيف عدة اجوبة وايضا احتاج الى واضع دالة معينة
// في الباراميتر اون برسد حق الزر لذلك سوف انشئ متغيرين داخل الكلاس
// المتغير الاول نوعه استرينق وهو نص الجواب والمتغير الثاني عبارة عن دالة
// سوف امررها في الاون برسد
/*
final String answerText;
final Function() x;
*/
//الان نعطي الزر مكان التكست نعطيه المتغير answerText
//والاون برسد نعطيه الدالة اكس
//الان اصبح هذا الكلاس جاهز فقط عندما نعمل منه اوبجكت في اي ملف اخر نمرر له قيمتين
//قيمة استرينق ودالة
//
//

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() x;
  //هذا عبارة عن كونستركتر الكلاس انسر
  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //لكي يجعل الازرار بعرض الشاشة
      child: ElevatedButton(
        onPressed: x,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}
