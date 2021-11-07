//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Quiz App
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main

//!هذا شرح الدرس السابع Quiz App 7
//!هنا سوف نشرح الدرس الخامس وهو امتداد وتابع للدروس في الملفات رقم 43 + 44 +45
//!لكن عزلناها هنا لانه سوف نعدل اكواد كثيرة ونغير امور اخرى في التطبيق

//في هذا الدرس سوف نعمل الدارك ثيم لكن بطريقة اخرى مختلفة عن الطرق السابقة
//هذي الطريقة افضل وابسط من الطرق السابقة
//اول حاجة المتغيرات حق الالوان بي ودبليو اللي عملناهم في الدرس السابق نحذفهم
//الان المتغير از سويتش حق مفتاح الثيم نخرجه خارج الكلاس لكي نجعله قلوبال
//حتى نقدر نستخدمه في جميع الملفات الاخرى bool isSwitched = false;
//الان سوف نضع الالوان وفقا للمتغير از سويتش
//الان نذهب الى الكونتينر الموجودة في البودي وفي الباراميتر كولور نضع شرط
//اذا كان المتغير ازسويتش قيمته فولس اي لما يكون غير فعال فان اللون يكون ابيض
//وخلافه اذا كان فعال اي قيمته ترو يكون اللون اسود
//! color: isSwitched==false? Colors.white:Colors.black,
//!الان نفس هذا الشرط نضعه في اي مكان نريده اي مكان اللون
//مثلا سوف نضع هذا الشرط مكان لون كلمة كويز اب التي في الاب بار
// title: Text("Quiz App",style: TextStyle(color: w),),
// سوف تصبح هكذا
/*
title: Text(
            "Quiz App",
            style: TextStyle(
                color: isSwitched == false ? Colors.white : Colors.black),
          ),
*/
//الان بالنسبة لاكواد الاف الشرطية التي في بودي البارامتير اون تشانج في زر السويتش
//نحذفها لانه ليس لها داعي بعد الان
//هذي نحذفها
/*
onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    if (isSwitched == true) {
                      b = Colors.white;
                      w = Colors.black;
                    }
                    if (isSwitched == true) {
                      b = Colors.black;
                      w = Colors.white;
                    }
*/
//سوف تصبح كالتالي
/*
onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                }
*/

//ايضا ننتقل الى الملف ريزلت ونضع هذا الكود في لون التكست
//
//
//

import '46.QuizApp_quiz_4.dart';
import '46.QuizApp_answer_4.dart';
import '46.QuizApp_question_4.dart';
import '46.QuizApp_result_4.dart';

import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool isSwitched = false;
//Color w = Colors.white;
//Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> question = [
    {
      'questionText': 'What\'s your favorite Color ?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Green', 'score': 10},
        {'text': 'Blue', 'score': 20},
        {'text': 'Yellow', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite Animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Lion', 'score': 10},
        {'text': 'Camel', 'score': 20},
        {'text': 'Cat', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favorite Instructor ?',
      'answers': [
        {'text': 'Mohammed 1', 'score': 5},
        {'text': 'Mohammed 2', 'score': 10},
        {'text': 'Mohammed 3', 'score': 20},
        {'text': 'Mohammed 4', 'score': 30}
      ]
    }
  ];

  int questionIndex = 0;
  int totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;
    setState() => questionIndex += 1;
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(
                color: isSwitched == false ? Colors.white : Colors.black),
          ),
          actions: [
            Switch(
                activeColor: Colors.white,
                inactiveThumbColor: Colors.black,
                inactiveTrackColor: Colors.white,
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                })
          ],
        ),
        body: Container(
            color: isSwitched == false ? Colors.white : Colors.black,
            child: questionIndex < question.length
                ? Quiz(question, questionIndex, answerQuestion)
                : Result(resetQuiz, totalScore)),
      ),
    );
  }
}
