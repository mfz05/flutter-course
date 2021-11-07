//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Expanded
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';

//بدانا بعمل ثلاث كونتينر بداخل صف
//الان نريد ان تكون هذي الثلاثة الكونتينرات بعرض الشاشة كلها
//درسنا سابقا المحاذاة عن طريق محورين المحور الافقي وهو mainAxisAlignment
//والمحور العمودي وهو crossAxisAlignment
//الان الكونتينرات الثلاث موجودة في جهة اليسار متلاصقة مع بعض
//اذا استخدمنا CrossAxisAlignment.strech
//سوف يمط الكونتينرات الثلاثة بكامل طول الشاشة لان الكروس اكسس المحور العمودي
//لكن اذا اردنا ان نمد العناصر بالعرض نريد استخدام المحور الافقي المين اكسس
//لكن المشكلة انه لايوجد خاصة استرتش في الماين اكسس الينمنت لكي نمد العناصر بالعرض
//!الحل انني استخدم ويدجت اخرى هي Expanded
//نقوم بعمل احاطة لكل كونتينر لحالة بالويدجت اكسباندد
//نلاحظ ان اي ويدجت تتوسع وتاخذ المساحة المتبقة بالعرض كلها بالتساوي
//اذا ما اريد العرض يتوزع بالتساوي نستخدم الخاصية فلكس بداخل الويدجت اكسباندد
//هنا كاننا قسمنا العرض الى 6 اقسام الكونتينر الاول اخذ3 والثاني اخذ2 والثالث اخذ1
//اي شي اخر نضيفة للصف ولم نعطيه الخاصية فلكس فانه افتراضيا يعطيه واحد
//اي ان الفلكس افتراضيا يساوي واحد
//فائدة اخرى من فوائد الاكسباندد ممكن ان نستعملها مع الصور
//اذا اضفنا الصورة للصف فانه افتراضيا سوف يعطيها فلكس واحد
//ممكن ان نضيف لها الخاصية فلكس ونعدل على قيم فلكس جميع العناصر الاخرى
//

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
          child: Row(
        children: [
          Expanded(child: Image.asset('assets/images/OIP.jpg')),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      )),
    );
  }
}
