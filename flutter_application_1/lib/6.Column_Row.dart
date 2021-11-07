//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Column & Row
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';

//هنا سوف نشرح استخدام العمود والسطر
//بدل مانجعل التكست ك ابن تشايلد بداخل الكونتينر فاننا نضعه بداخل صف او عمود
//مباشرة نحدد كلمة تكست ونضغط الهنت السراج الاصفر يعطينا اختيارات نختار منها
//راب ويث كولمن او راب ويث رو يعني احاطة بعمود او بصف Wrap with Column
//اذا ذهبنا الى تصفح اكواد الويدجت كولمن سوف نجد ان الكونستركتر يحتوي على
//عدة باراميترات نيمد اوبشنال ومن ضمنها ليست اسمها شلدرن تحوي قيم من نوع ويدجت
//هذي اللستة كونستانت يعني لما نضيفها هنا في الكود ممكن اننا نكتب قبلها كونست
//children = const <Widget>[],
//سوف نمرر ل لستة الشيلدرن عدد من الويدجت من نوع تكست
//الان نلاحظ في التطبيق ان هذا العمود ياخذ جهة اليسار من الشاشة من اعلى الى اسفل
//نفس الكلام هذا ينطبق على الصف اذا اضفنا صف بدل العمود
//الان نريد جعل العمود في وسط الصفحة نستخدم النيمد اوبشنال mainAxisAlignment:
//هذا المتغير اذا رحنا للاكواد تبعة نلاحظ انه من نوع الكلاس MainAxisAlignment
//بالتالي يجب ان نمرر له قيمة من نوع هذا الكلاس وايضا سوف نرى في الاكواد حقه
//MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
//هذا يعني اننا مررنا له قيمة هي عبارة عن متغير استاتيك من نوع الكلاسMainAxisAlignment
//وهذي الديفولت فاليو اللي حطها له فلاتر وممكن ان نغيرها
//هذا المتغير ستارت لانه استاتيك يجب ان نستدعية باسم الكلاس MainAxisAlignment.start
//واذا ذهبنا الى اسم هذا الكلاس نلاحظ انه عبارة عن اينوم ويحتوي على خصائص مثل
//start, end,center....
//استارت تعني من بداية الصفحة ولانها انجليزي فان بداية الصفحة من جهة اليسار
//الاند سوف تكون جهة اليمين
//لكي نجعل المحاذاة للعمود كله في الوسط فاننا نجعل الكونتينر كله في الوسط
//المحاذاة للكونتينر في الوسط alignment: Alignment.center,
//اذا دخلنا الى كود المتغير alignment:
//سوف نلاحظ ان نوعه هو نل او AlignmentGeometry?
//اي انه يستقبل قيم من نوع اليمنت جومنتري وبالتالي فاننا مررنا اليه
//الويدجت الينمنت لاننا نعرف انها ترث من ويدجت الينمنت جيومنتري
// اي ان نوعها اليمنت جيومنتري
// class Alignment extends AlignmentGeometry
//وبالتالي فانه قبلها مننا
//وايضا استدعينا من خلال الاليمنت الخاصية سنتر وهي متغير استاتيك في الكلاس الينمنت
//! كل هذا نتعرف عليه من خلال الممارسة

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);
  //هذا الكي المفتاح سوف يتم شرحه في دروس لاحقه

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center, //يجعل محاذاة الكونتينر في الوسط
          color: Colors.green,
          child: Column(
            //mainAxisAlignment:MainAxisAlignment.start ,//محاذاة المحور الرئيسي للعمود
            mainAxisAlignment:
                MainAxisAlignment.center, //هذي محاذاة التكست اللي وسط الكولمن
            children: const [
              Text('Hello World!'),
              Text('Hello World!'),
              Text('Hello World!'),
              Text('Hello World!'),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Home page'),
          leading: Icon(
            Icons.access_alarm_rounded,
            color: Colors.red[700],
          ),
        ),
      ),
    );
  }
}
