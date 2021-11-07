//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Transform
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main
//!سوف نقسم هذا الدرس الى اربعة اجزاء في اربعة ملفات
//! بحيث كل جزء يشرح نوع من انواع الترانسفورم الاربعة

import 'dart:math';

import 'package:flutter/material.dart';

//!هنا سوف نشرح Transform.scale(
//يحتاج الاسكيل الى باراميتر اسكيل والقيمة التي نعطيه اياها فانه يقوم بضرب
//ابعاد الكونتينر الطول والعرض في هذي القيمة اي انه يجعل الكونتينر يكبر حجمه
//واذا اعطيناه قيم اقل يجعل الكونتينر يصغر حجمه
//مثلا اذا ربطنا السكيل بالسلايدر واعطينا اكبر قيمة للسلايدر 4
//اذا كان السلايدر على صفر فلايوجد كونتينر لانه سوف يضرب الطول والعرض في صفر
//لو حركنا السلايدر الى واحد فان ابعاد الكونتينر سوف تكون نفسها
// التي سجلناها في الطول والعرض لانه سوف يضربها في واحد وهكذا
//مثلا لو ابعاد الكونتينر 100*100 وكان قيمة الاسكيل 3 فان ابعاد الكونتينر راح
//تصير 300*300 وهكذا كلما سحبنا مؤشر السلايدر
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
          Transform.scale(
            scale: _value,
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
          Text('value: ${(_value).round()}', style: TextStyle(fontSize: 30)),
          Slider(
            value: _value,
            onChanged: (double val) => setState(() => _value = val),
            min: 0,
            max: 4,
            divisions: 4,
            label: 'value',
            activeColor: Colors.yellow,
            inactiveColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
