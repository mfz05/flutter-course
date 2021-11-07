//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Transform
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main
//!سوف نقسم هذا الدرس الى اربعة اجزاء في اربعة ملفات
//! بحيث كل جزء يشرح نوع من انواع الترانسفورم الاربعة

import 'dart:math';

import 'package:flutter/material.dart';

//!هنا سوف نشرح Transform.translate(
//ترانسليت يعني نقل اي انه ينقل الكونتينر الى اماكن مختلفة في الشاشة
//يحتاج هذا الكونستركتر الى باراميتر ريكوايرد هو اوفست اي المكان الدقيق
//يحتاج الاوفست الى قيمة اكس وقيمة واضبط الاتجاهات يكون من نقطة الاصل
//اي من مركز الويدجت offset: Offset(dx, dy),
//هنا سوف يزيح الكونتينر بمقدار 40 باتجاه الاكس offset: Offset(40,0),
//هنا اذا اعطيناه قيم بالسالب فانه سوف يزيح الكونتينر بمقدار 40 بالتجاه المعاكس
// offset: Offset(-40,0),
//اي انه قيم اكس تزيح الشكل جهة اليمين او اليسار بوضع افقي
//اما قيم واي فانها تزيح الشكل اعلى واسفل باتجاه عمودي
//الان ممكن ان نتحكم بها عن طريق الفاليو
// offset: Offset(_value,_value),
//هنا الحركة سوف تكون باتجاه اليمين والى اسفل
//اما اذا اعطينا مثلا قيمة الواي سالب فان التجاه سوف يكون اباتجاه اليسار والى اعلى
// offset: Offset(_value,-_value),
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
          Transform.translate(
            //offset: Offset(_value, _value),
            offset: Offset(_value, -_value),
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
