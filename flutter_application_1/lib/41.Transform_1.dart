//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Transform
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main
//!سوف نقسم هذا الدرس الى اربعة اجزاء في اربعة ملفات
//! بحيث كل جزء يشرح نوع من انواع الترانسفورم الاربعة

import 'dart:math';

import 'package:flutter/material.dart';

//!في هذا الدرس سوف نتعرف على الويدجت ترانسفورم
//سوف نستخدم نفس اكواد درس السلايدر السابق مع تثبيت مقاسات الكونتينر
//الارتفاع والعرض كلها مقاسات ثابتة وغيرنا المحور الافقي من سنتر الى سبيس اراوند
//الان سوف نعمل احاطة للكونتينر بالويدجت ترانسفورم وسوف نختار النيمد كونستركتر
//ترانسفورم دوت روتيت Transform.rotate
//يحتوي على باراميتر ريكوايرد هو الانقل الزاوية
//روتيت يعني تدوير وانقل زاوية الدوران فيقوم بتدوير اي ويدجت بزاوية معينة
//اي ويدجت ممكن نعمل لها دوران وليس الكونتينر فقط
//قيمة الباراميتر انقل لايقبل درجة وانما يجب ان نمرر له قيمة بالراديان
//اي انه يجب ان نحول الزاوية الى راديان ونعطيه القيمة
//او نكتب باي على 2 اذا اردنا الزاوية 90 مثلا فيدور الكونتينر بزاوية 90
//زاوية 45 هي باي على 4 angle: pi/4,
//طيب لو اردنا انعطيه قيمة درجة يجب علينا الى نحولها الى راديان
//وذلك بضربها في باي على 180 angle: 45*(pi/180),
//الان ممكن ان نعطيه قيمة اي درجة فقط نضربها في باي على 180
//ممكن ان اجعل مقدار زاوية التدوير مرتبط بقيمة الاسلايدر وبما انه قيمة الفاليو
//حق السلايدر تتغير بتغير المؤشر اذا سوف اسند قيمة المتغير فاليو الى الانقل الزاوية
// angle: _value*(pi/180),
//الان سوف نجعل قيمة الماكس اقصى حد لقيمة فاليو 360 والمين نفسه صفر حتى يدور
//الكونتينر بمقدار من صفر الى 360 درجة حسب حركة مؤشر السلايدر
//
//
//
//
//
//

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
      initialRoute: '/',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        title: const Text(
          'Demo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Transform.rotate(
            //angle: 45*(pi/180),
            angle: _value * (pi / 180),
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
          ),
          Text('value: ${(_value).round()}', style: TextStyle(fontSize: 30)),
          Slider(
            value: _value,
            onChanged: (double val) => setState(() => _value = val),
            min: 0,
            max: 500,
            divisions: 100,
            label: 'value',
            activeColor: Colors.yellow,
            inactiveColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
