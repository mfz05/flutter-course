//!هذا درس من دورة فلاتر ل حسن فليح بعنوان column & Row Alignment
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
//import 'package:flutter_application_1/22.test.dart';

//في هذا الدرس سوف نتعلم كيفية ضبط المحاذاة الخاصة بالعمود والصف

//! الفرق مابين الكونتينر والعمود او الصف
// 1- الكونتينر عنده تشايلد ياخذ ويدجت واحد فقط
// بينما العمود او الصف عنده تشيلدرن تاخذ لستة نضيف لها عدد غير محدود من الويدجت

// 2- الكونتينر يحتوي على خيارات ممكن نحدد محاذاته وممكن نعطيه الاستايل
//بينما العمود او الصف توجد المحاذاة لكن الاستايل غير موجود

// 3- الكونتينر لديها عرض او طول مرن قابل للتغيير
//ممكن يكون بحسب المحتوى او يكون بكامل حدود الشاشة او نستطيع تحديد مقاس ثابت
// بينما العمود او الصف فانه ياخذ الطول الكلي او العرض الكلي للشاشة

// 4- متى نحتاج الكونتينر لوعندنا ويدجت واردنا عمل له استايل ومحاذاة معينة
//نستخدم العمود اذا كان لدينا مجموعة من الويدجت موضوعة واحدة فوق الاخرى
//نستخدم الصف اذا كان لدينا مجموعة من الويدجت موضوعة واحدة بجانب الاخرى

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
  var b = Colors.black;
  var w = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        title: const Text(
          'AppBar Title',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        //حجم الكونتينر سوف يكون على حسب عدد العناصر بداخلها
        //لضبط محاذاة العناصر بداخل الكونتينر
        //alignment: Alignment.center,
        //لو اردنا الكونتينر تشغل عرض الشاشة باكملها
        //width: double.infinity,
        //لو اردنا الكونتينر تشغل طول الشاشة باكملها
        //height: double.infinity,
        color: b,

        /*
          child: Column(
            لضبط محاذاة المحتويات التي بداخل العمود اخذناه في الدرس السابق
            هذا المحور العمودي بالنسبة للعمود MainAxisAlignment
            mainAxisAlignment: MainAxisAlignment.center,

            هذا نوع جديد من ضبط المحاذاة عن طريق كروس اكسس
            هذا المحور الافقي بالنسبة للعمود CrossAxisAlignment
            crossAxisAlignment:CrossAxisAlignment.stretch ,
            children: <Widget>[
              Text('Text1', style: TextStyle(color: w, fontSize: 20)),
              Text('Text2', style: TextStyle(color: w, fontSize: 20)),
            ],
          ),

          */

        child: Row(
          //لضبط محاذاة المحتويات التي بداخل الصف اخذناه في الدرس السابق
          //هذا المحور الافقي بالنسبة للصف MainAxisAlignment
          mainAxisAlignment: MainAxisAlignment.center,

          //هذا نوع جديد من ضبط المحاذاة عن طريق كروس اكسس
          //هذا المحور العمودي بالنسبة للصف CrossAxisAlignment
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Text1', style: TextStyle(color: w, fontSize: 20)),
            Text('Text2', style: TextStyle(color: w, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
