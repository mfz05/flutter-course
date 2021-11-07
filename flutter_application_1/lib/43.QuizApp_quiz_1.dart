//!الشرح يبدا من ملف الماين 
//! 43.QuizApp_main_1.dart
//!هذا شرح الدروس من Quiz App 1 الى Quiz App 4
//!اما الدرس الخامس شرحه في الملفات رقم 44 Quiz App 5

//الان بعدما نقلنا العمود من ملف الماين نلاحظ انه يوجد عندي اخطا ظهرت في بعض المتغيرات
//اولا اقوم بعمل استيراد لملف كوسشن وملف انسر نلاحظ انه بقيت ثلاثة متغيرات فيها خطا
//وهي اللستة كوسشن والمتغير كوسشن اندكس والدالة انسر كوسشن
// question و questionIndex و answerQuestion
//لذلك سوف امرر قيمهم من ملف الماين عن طريق الكونستركتر
//مثل كل الملفات الاخرى سوف ننشئ متغيرات ونعملها باراميترات بداخل الكونستركتر
//لكي نعمل اوبجكت من هذا الكونستركتر في ملف الماين ونمرر له هذي المتغيرات
//الان يجب ان تكون انواع الباراميترات حق الكونستركتر نفس انواع المتغيرات التي
//ارغب في تمريرها من خلال الاوبجكت يعني مثلا ننسخ نوع اللستة كوسشن ونلصقه هنا
// في المتغير كوسشن وكذلك نوع المتغير كوسشن اندكس هو انتجر
// والمتغير انسر كوسشن هو دالة
/*
final List<Map<String, Object>> question;
final int questionIndex;
final Function() answerQuestion;
*/
//
//
//
//
//

import 'package:flutter/material.dart';
import '43.QuizApp_answer_1.dart';
import '43.QuizApp_question_1.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function() answerQuestion;

  Quiz(this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Question(question[questionIndex]),
        //Question(question[questionIndex]['questionText']as String),//هذا صح
        Question(question[questionIndex]['questionText'].toString()), //وهذا صح

        ...(question[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
        //Answer((){},"Answer 1"),
        //Answer(answerQuestion, "Answer 1"),
        //Answer(answerQuestion, "Answer 2"),
        //Answer(answerQuestion, "Answer 3"),
      ],
    );
  }
}
