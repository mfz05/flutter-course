//!هذا درس من دورة فلاتر ل حسن فليح بعنوان AppBar Background Color
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
//عملنا امبورت لمكتبة ماتيريال

//هذا الدرس عبارة كيف تغير لون الاب بار عن طريق الثيم وهو في الملف main.dart
//يعني انتهينا من شرحه في الدروس السابقة

class LessonTwo extends StatefulWidget {
  const LessonTwo({Key? key}) : super(key: key);
  //هذا في النسخ الحديثة يطلبه الكي المفتاح سوف يتم شرحه في دروس لاحقه

  @override
  State<StatefulWidget> createState() => _LessonTwoState();
  //ممكن نكتبها بطريقة البلوك العادي
  /*
  State<StatefulWidget> createState(){
    return LessonTwoState();
  } 
  */

}

class _LessonTwoState extends State<LessonTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'AppBar Title',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(),
    );
  }
}
