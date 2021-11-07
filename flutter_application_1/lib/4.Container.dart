//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Container
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';

//هذا البرنامج تكملة للبرنامج في الملف رقم 2
//الان هنا سوف نشرح الاكواد الجديدة التي سوف نضيفها
//نلاحظ انه عند تنفيذ البرنامج يوجد شريط احمر في طرف التطبيق مكتوب عليه دي بق
//لكي نزيل هذا الشريط فاننا بداخل الماتيريال اب مباشرة نستدعي الخاصية
//debugShowCheckedModeBanner:
//نلاحظ ان نوعها بوليان ترو او فولس نختار فولس لكي يلغيها
//نلاحظ ان الايقونة التي مررناها في الليدينق
// لها باراميترات اختيارية اخرى مثل  Color? color,
//الان سوف نضيف الباراميتر كولور لكي نغير لون الايقونة
//نكتب Colors.
//ونختار اي لون نريده او اي تدرج لنفس اللون نريده
//ممكن ان نغير لون الاب بار كله عن طريق الباراميتر backgroundColor:
//اي شي ممكن ان نغير لونه والا لوان كلها موجودة في الويدجت Colors.
//!الان بدل السنتر في البودي ممكن ان نستبدله ب الكونتينر Container
//الكونتينر هو وعاء يحتوي مجموعة من الويدجت ويضيف لها خصائص اضافية
// والا فانه ليس لها فائدة ان تضفهاوخليك على السنتر اذا لم تضيف خصائص اخرى
//!نلاحظ ان حجم الكونتينر في البرنامج يتشكل على حسب حجم المحتوى فقط لاياخذ كل الشاشة
//اذا كان فيه محتوى كثير في الكونتينر فانه سوف يكون شكله كبير في التطبيق
//واذا كان محتواه قليل فانه سوف يكون حجمه اصغر في التطبيق

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);
  //هذا الكي المفتاح سوف يتم شرحه في دروس لاحقه

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          //الكونتينر هو وعاء يحتوي مجموعة من الويدجت
          child: const Text('Hello World'),
          color: Colors.blueAccent,
        ),
        appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Home page'),
            leading: const Icon(
              Icons.access_alarm_rounded,
              color: Colors.red,
            ),
            actions: const [
              Icon(Icons.access_alarm_rounded),
              Icon(Icons.access_alarm_rounded),
              Icon(Icons.access_alarm_rounded),
            ]),
      ),
    );
  }
}
