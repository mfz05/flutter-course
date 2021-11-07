//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Slider
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main

import 'dart:math';

import 'package:flutter/material.dart';

//!في هذا الدرس سوف نتعرف على السلايدر
//وهو عبارة عن خط يجري عليه مؤشر بحيث ان هذا المؤشر تتغير قيمته عند تحريكه
//نستخدمه مثلا في التطبيقات لجعل المستخدم يختار قيمة معينة
// او لتحديد مجال البحث عن شي معين من كذا الى كذا وغيرها
//في البداية السلايدر يستخدم الاستيت لان قيمته تتغير كلما حركنا المؤشر وليست ثابتة
//لذلك نحول الكلاس الى ان يرث من استيت فل ويدجت نضع مؤشر الماوس على اسم الويدجت
//استيت لس ويدجت ثم نضغط الهنت ونختار convert to StateFulWidget
//الان نقوم بعمل متغير نوعه دبل في الكلاس ونسميه اي اسم double _value = 0.0;
//الان بداخل لستة التشيلدرن حق العمود نعمل ويدجت تكست
// نجعلها تطبع فاليو وقيمة المتغير فاليو 'value: $_value'
//الان نضيف ويدجت اسمه سلايدر الى لستة التشيلدرن
// Slider(value: value, onChanged: onChanged)
//يحتوي على 2 باراميترات ريكوايرد الفاليو والاون تشانج
//الباراميتر فاليو نعطيه المتغير فاليو الذي عملناه
//الباراميتر اون تشانج يقبل دالة ويجب تمرير باراميتر للدالة نوعه دبل
// وهو الذي سوف تتغير قيمته في كل مرة نعرف لها متغير باي اسم نوعه دبل
//في البودي سوف نمرر لها الدالة ست استيت وبداخلها سوف نسند قيمة باراميتر
// الدالة الى المتغير فاليو الذي عرفناه في بداية الدرس
// onChanged: (double val) => setState(() => _value = val))
//الان لما نشغل البرنامج يظهر لدينا السلايدر ونستطيع تحريك المؤشر وتتغير القيمة كلما حركناه
//الان ماذا يحدث الذي يحدث هو انه بما اننا اسندنا للباراميتر فاليو حق السلايدر
// اسندنا له المتغير فاليو الذي قيمته صفر فانه في كل مرة نحرك المؤشر
// تتغير قيمة الباراميتر فال الذي يسند هذي القيمة الى المتغير فاليو
// وبالتالي تتغير قيمة المتغير فاليو ويتم عرضها في الويدجت تكست
//نلاحظ انه عندما نحرك المؤشر فانه يبدا بالصفر وينتهي بالواحد ممكن نعدل هذي القيم
//ولكن اذا نضرنا للاكواد حق السلايدر نلاحظ ان الباراميتر مين قيمته الافتراضية هي صفر
// والباراميتر ماكس قيمته الافتراضية هي واحد
// وبالتالي نستطيع اضافتهم للبرنامج وتعديل قيمتهم
//ممكن اننا نستغني عن تحديد قيمة المين والماكس مثلا
//ونقوم بدل عن ذلك بضرب قيمة المتغير فاليو في 100 مثلا 'value: ${_value*100}'
//الان يكون الرينج من صفر الى 100 ممكن اننا نقرب الارقام
// لكي لاتظهر عندنا ارقام عشرية وذلك عن طريق دالة الراوند
// 'value: ${(_value*100).round()}'
//الباراميتر ديفيجن يعطينا عدد التقسيمات في كل مرة نسحب فيها المؤشر
// مثلا لو كان عندنا الرينج من صفر الى مائة واعطينا الديفيجن قيمة 100
//فانه عند سحب المؤشر تتغير القيم بمقدار واحد كل مرة
//ولو عملنا عدد التقسيمات بدل 100 مثلا عملناه 10
//فانه في كل خطوة نسحب المؤشر يعطينا عشرة عشرين ثلاثين الى مائة وهكذا
//ممكن نعطي ليبل استرينق يظهر فوق المؤشر
//وكمثال اخر ممكن اننا نضيف كونتينر ونتحكم بطولها وعرضها من خلال السلايدر
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            width: _value,
            height: _value,
          ),
          // Text('value: $_value', style: TextStyle(fontSize: 30)),
          //Text('value: ${(_value*100).round()}', style: TextStyle(fontSize: 30)),
          Text('value: ${(_value).round()}', style: TextStyle(fontSize: 30)),
          Slider(
            value: _value,
            onChanged: (double val) => setState(() => _value = val),
            min: 0,
            max: 500,
            divisions: 100, //عدد التقسيمات في كل خطوة نسحب فيهاالمؤشر
            label: 'value',
            activeColor: Colors.yellow, //لون الخط على مؤشر السحب
            inactiveColor: Colors.green, //لون الخط الثابت تحت مؤشر السحب
          ),
        ],
      ),
    );
  }
}
