//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Quiz App
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main

//!هذا شرح الدرس السادس Quiz App 6
//!هنا سوف نشرح الدرس الخامس وهو امتداد وتابع للدروس في الملفات رقم 43 + 44
//!لكن عزلناها هنا لانه سوف نعدل اكواد كثيرة ونغير امور اخرى في التطبيق

//في هذا الدرس سوف نعمل الدارك ثيم لكن بطريقة اخرى مختلفة عن الطرق السابقة
//اول حاجة سوف نعرف متغيرات ونعطيها الوان اهم حاجة ان نوع المتغير تعمله كولور
//وليس فار لكي لاتواجه مشاكل
//سوف نعطي كونتينر البودي لون ابيض
//الان نريد انه عند الضغط على شي معين يتم تحويل اللون الابيض الى اسود والعكس
//سوف نستخدم زر جديد اسمه سويتش بوتون سوف نضعه في الاب بار عند الضغط عليه
//يحول الثيم وعند الضغط عليه مرة اخرى يرجع الثيم
//الان بداخل الاب بار سوف نضع الباراميتر اكشن الذي يستقبل لست اوف ويدجت وبالتالي
//استطيع ان اضع اي ويدجت في الاب بار بداخل لستة الويدجت في الاكشن
//احد هذي الويدجت هي السويتش ويوجد بها 2 باراميترات ريكوايرد هما فاليو و اون تشانج
// Switch(value: value, onChanged: onChanged)
//الفاليو تقبل قيم نوعها بوليان
//اما الاون تشانج تقبل دالة ويجب ان يمرر لها باراميتر نوعه بوليان
//اون تشانج يعني عند تغيير المفتاح حق السويتش
//ف لكي لا اعطي الفاليو قيمة مباشرة ترو او فولس سوف اعرف متغير
//لذلك سوف اعرف متغير داخل الكلاس اسمه از سويتشد نوعه بوليان وقيمته المبدئية فولس
//سوف نمرر متغير نسميه اي اسم مكان باراميتر الدالة التي سوف نعطيها ال اون تشانج
//سمينا البراميتر فاليو الان سوف نجعل المتغير البوليان الذي عرفناه اللي هو
//از سويتشد يساوي قيمة الباراميتر هذا
// Switch(value: isSwitched, onChanged: (value){isSwitched=value})
//الان بما انه يحصل تغيير لقيمة السويتش كلما ضغطنا عليه في التطبيق اذا
//يجب ان نجعله بداخل دالة ست استيت
// onChanged: (value) {setState(() {isSwitched = value;});}
//الان نريد ان نربط هذا السويتش بالاللوان علشان مرة يكون ابيض ومرة اسود
//الان بداخل دالة الست استيت نستخدم اف الشرطية
//اذا كان المتغير از سويتشد يساوي ترو اذا اللون الاسود نحولة الى ابيض والابيض اسود
//واذا كان العكس نعكس الالوان
//الان سوف نشيك على كل صفحة لاتظهر فيها الوان النصوص مع الثيم الاسود
// ونغير لونها الى لون مناسب
//اولا متغيرات الالوان التي عرفناها بداية الدرس يجب ان ننقلها خارج الكلاس
//لكي نستطيع استدعائها من الملفات الاخرى بعدما نعمل استيراد لملف الماين
//لهذي الملفات لانه لو تركنا هذي المتغيرات بداخل الكلاس وعملنا استيراد
// لملف الماين في الملفات الاخرى وعدلنا اللون الى حرف دبليو او بي
// فلن يتعرف عليهن لذلك يجب ان نعرفهن هنا خارج الكلاس لكي تصبح متغيرات عامة
// ونقدر نستفيد منهن في الملفات الاخرى
//الان سوف نغير الوان الزر سويتش
/*
activeColor: Colors.white,
inactiveThumbColor: Colors.black,
inactiveTrackColor: Colors.white,
*/
//
//
//

import '45.QuizApp_quiz_3.dart';
import '45.QuizApp_answer_3.dart';
import '45.QuizApp_question_3.dart';
import '45.QuizApp_result_3.dart';

import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  //Color w = Colors.white;
  //Color b = Colors.black;

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
  bool isSwitched = false;

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
            style: TextStyle(color: w),
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
                    if (isSwitched == true) {
                      b = Colors.white;
                      w = Colors.black;
                    }
                    if (isSwitched == true) {
                      b = Colors.black;
                      w = Colors.white;
                    }
                  });
                })
          ],
        ),
        body: Container(
            color: w,
            child: questionIndex < question.length
                ? Quiz(question, questionIndex, answerQuestion)
                : Result(resetQuiz, totalScore)),
      ),
    );
  }
}
