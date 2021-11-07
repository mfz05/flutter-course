//!هذي الدالة ماين الجديدة بعدما عدلناها في الدرس 12 واضفنا لها كلاس ماي اب
//!لكي تكون منطقية اكثر وسوف نستدعي كلاسات الدروس الاخرى بداخل الكلاس ماي اب
//!اي اننا سوف نستورد كلاس التطبيق كله من صفحة اخرة ونضعه في الهوم
//!وسوف نستدعي الكلاس ماي اب في الدالة ماين من خلال الدالة رن اب

//!الان هنا قمنا بتثبيت الماتيريال اب وبالتالي يجب علينا ان لانكتبها
//!في الكلاسات الاخرى التي نريد استدعائها هنا
//!وانما نجعل الدالة بيلد في الكلاسات الاخرى ترجع الاسكافولد مباشرة
//!وبالتالي نجعل الماتيريال اب هنا تضبط اعدادات التطبيق
//!بحيث نجعل اعدادات ثابتة لنا هنا حتى تكون لكل التطبيقات
//! كذلك تعطيني ثيم خاص بالتطبيق من خلال الباراميتر ثيم
//!اهم حاجة في الثيم هو الباراميتر برايمري سويتش
//!وهو مسؤول عن تحديد اللون الرئيسي للتطبيق يعني اي شي نعمله في التطبيق
//!مثل الاب بار او الازرار او اي شي له لون
//! سوف يكون لونه نفس اللون الافتراضي الذي حددناه هنا
//!لماذا جعلنا الكلاس ماي اب يرث من استيت لس ويدجت ولم نجعله يرث من استيت فل
//!لانه لايوجد في هذا الكلاس محتويات تحتاج الى تحديث مستمر اي تحتاج الى حالة استيت
//!لان الاشياء التي تحتاج الى تحديث الحالة بدون ان نعمل اعادة تشغيل للبرنامج
//!مرة اخرى هي موجودة في ملفات البرامج الاخرى

import 'package:flutter/material.dart';

//import '2.body.dart';
//import '3.appBar.dart';
//import '4.Container.dart';
//import '5.Colors.dart';
//import '6.Column_Row.dart';
//import '7.TextStyle.dart';
//import '8.Buttons.dart';
//import '9.ButtonStyle.dart';
//import '10.IconButton_onPressed.dart';
//import '11.FAB.dart';
//import '12.StatefulWidget.dart';
//import '15.DarkTheme.dart';
//import '16.TextField_3.dart';
//import '18.AgeCalculatorApp_2.dart';
//import '25.Card_ListView_2.dart';
import '29.DatePicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(primaryColor: Colors.blue),
      //البرايمري كولو لايقبل الوان الاكسنت
      //! هنا نستدعي كلاسات ملفات الدروس بعدما نعمل لها استيراد في الاعلى
      //!هنا لما استدعينا الكلاس لسن تو في الاساس نحنا عملنا اوبجكت منه
      //!لاننا استدعينا الكونستركتر LessonTwo()
      home: const LessonTwo(),
    );
  }
}
