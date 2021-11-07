//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Transform
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main
//!سوف نقسم هذا الدرس الى اربعة اجزاء في اربعة ملفات
//! بحيث كل جزء يشرح نوع من انواع الترانسفورم الاربعة

import 'dart:math';

import 'package:flutter/material.dart';

//!هنا سوف نشرح Transform()
//مع اضافة الخاصية transform:
//ومن ثم نمرر لها transform: Matrix4.skewX(alpha),
//هذي الخاصية تعمل انحراف في شكل الكونتينر اي تعمل له اسكيو skew
//نعطيه قيمة الالفا مثلا 0.3 لكي يغير الاسكيو حق شكل الكونتينر
// transform: Matrix4.skewX(0.3),
//ممكن ان نجعل الاسكيو جهة الواي اي المحور العمودي transform: Matrix4.skewY(0.7),
//واذا نريدها بالاكس والواي فاننا نستخدم transform: Matrix4.skew(0.5,0.3),
//ونعطيه قيمة الاكس وقيمة الواي
//ملاحظة لم نربط الاسكيو ترانسفورم بالسلايد

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
          Transform(
            //transform: Matrix4.skewX(0.3),
            //transform: Matrix4.skewY(0.7),
            transform: Matrix4.skew(0.5, 0.3),
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
            max: 150,
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
