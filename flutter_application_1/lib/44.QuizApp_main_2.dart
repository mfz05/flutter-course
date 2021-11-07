//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Quiz App
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main

//!هذا شرح الدرس الخامس Quiz App 5
//!هنا سوف نشرح الدرس الخامس وهو امتداد وتابع للدروس في الملفات رقم 43
//!لكن عزلناها هنا لانه سوف نعدل اكواد كثيرة ونغير امور اخرى في التطبيق

//الان في هذا الدرس ممكن ان نضيف التقييم والدرجاتاي انه عندما يتم اختيار اي اجابة
//يتم اعطائه تقييم معين او علامات او درجات مختلفة لكل اجابة
//بالتالي فاننا سوف نعمل على زيادة تعقيد لستة الاسئلة والاجوبة question
//اي اننا سوف نقوم بتحويل العنصر الاسترينق الذي بداخل لستة الاجوبة انسرس
//سوف نقوم بتحويله الى ماب مكونة من عنصرين العنصر الاول المفتاح كلمة تكست
//والقيمة هي نفس الاجابة الاسترينق التي كانت سابقا والعنصر الثاني المفتاح كلمة
//سكور والقيمة هي الدرجة التي سوف نعطيها عند اختيار هذي الاجابة
//الان نريد ان نحسب الدرجات اي اننا سوف نجمع كل الدرجات التي حصل عليها المستخدم
//عند الضغط على الاجابات
//سوف ننشئ متغير int totalScore = 0;
//الان لكي نجمع الدرجات سوف نضيف المتغير توتال سكور الى الدالة answerQuestion()
//وسوف نجعل هذا الدالة تستقبل باراميتر واحد هذا الباراميتر سوف نمرر فيه
// العلامات ومن ثم سوف نجعل المتغير توتال سكور يقوم بجمع القيم
// التي يتم تمريرها في الباراميتر سكور
/*
void answerQuestion(int score) {
    totalScore += score;
*/
//ايضا سوف نضيف المتغير توتال سكور الى الدالة ريست كويز resetQuiz()
//لكي يتم تصفير مجموع الدرجات عندما نعيد تشغيل البرنامج من جديد
//الان نذهب للملف كويز لتعديل الاكواد بعدما غيرنا اللستة كوسشن
//الان بعدما ضبطنا طريقة استقبال الاجوبة والاسكور في ملف كويز
//الان هنا نريد ان نستفيد من المجموع الدرجات الذي خزناه في المتغير توتال اسكور
//نريد طباعته في الصفحة الاخيرة من التطبيق والتي مسؤول عنها الكلاس ريزلت
//اذا سوف نمرر لاوبجكت الكلاس ريزلت ارقيومنت اخر هو المتغير توتال ريزلت
//وسوف نستقبله هناك في ملف الريزلت لكي نعرضه في الصفحة الاخيرة الان اذهب للملف ريزلت
//
//
//
//

import '44.QuizApp_quiz_2.dart';
import '44.QuizApp_answer_2.dart';
import '44.QuizApp_question_2.dart';
import 'package:flutter/material.dart';

import '44.QuizApp_result_2.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

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
    //هذي البرنتات تعرض فقط في الكونسول وليس لها اي فائدة لذلك ممكن نحذفها
    print(questionIndex);
    print(totalScore);
    print('Answer chosen !');
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
          title: Text("Quiz App"),
        ),
        body: Container(
            child: questionIndex < question.length
                ? Quiz(question, questionIndex, answerQuestion)
                : Result(resetQuiz, totalScore)),
      ),
    );
  }
}
