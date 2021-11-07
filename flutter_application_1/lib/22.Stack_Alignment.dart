//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Stack & Alignment
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
import 'package:flutter_application_1/22.test.dart';

//الاستاك عبارة عن ويدجت وظيفته انه يحوي الويدجت الاخرى بداخله لغرض تنسيقها
//من خصائص الاستاك ان العناصر تكون مترتبه بداخله بعضها فوق بعض
//في هذا الدرس سوف نشرح الشيلدرن وحقها اللسته التي نضعها بداخل الاستاك
//وايضا الاليمنت المحاذاة للاستاك
//الان بعدما عملنا عدة كونتينرات بداخل الاستاك نلاحظ انه كدسها فوق بعض
//وان المحاذاه حقها هو اعلى يسار top left
//لو ذهبنا الى مركز الاكواد حق الاستاك سوف نرى ان المحاذاه افتراضيا هي اعلى وستارت
//استارت اي الجهة الافتراضية للغة والانجليزية تبدا من جهة اليسار
// this.alignment = AlignmentDirectional.topStart,
//الان لو نريد تعديل المحاذاه فاننا سوف نضيف للاستاك البراميتر alignment:
//نلاحظ ان قيمته هي AlignmentDirectional
//ولو تحققنا من نوع هذا الكلاس سوف نلاحظ انه من نوع AlignmentGeometry
//ونحنا نعرف كلاس اخر يرث ايضا من الكلاس AlignmentGeometry
//وهو اسمه مختصر هو Alignment
//ايضا بامكاننا ان نضيفه هنا للباراميتر alignment:
// alignment:Alignment.centerLeft ,
//برضه لورجعنا لاكواد هذا الكلاس سوف نلاحظ ان جميع الخصائص استاتك اي نستدعيها باسم الكلاس
//الان ممكن اننا نضيف تشايلد لاحد الكونتينرات التي وضعناها بداخل الاستاك
//ونضع بداخل هذا التشايلد صف وهذا الصف سوف نضيف له مصفوفة شيلدرن
//نضع بداخلها تكست سوف نستورد خصائصها من ملف test
//مثلما عملنا بتقسيم البرنامج في الملف رقم 21
//ثم نتلاعب بالمحاذاة لجميع محتويات الصف من خلال الباراميتر
// mainAxisAlignment: MainAxisAlignment.center,
//هناك انواع اخرى من المحاذاة مثل
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
//هذي توزع المسافات ما بين الويدجت التي بداخل الصف بالتساوي في الاطراف لايترك مسافات
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//هذي توزع المسافات بالتساوي مابين الويدجت وايضا في الاطراف
//mainAxisAlignment: MainAxisAlignment.spaceAround,
//هذا هذا يوزع المسافات مابين العناصر بالتساوي لكن المسافة
//التي قبل العنصر الاول وبعد العنصر الاخير هي نصف المسافة التي بين العناصر
//سوف توضح الفكرة اذا عملنا عمود بدل الصف وعملنا بداخل هذا العمود عدة صفوف
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
        alignment: Alignment.center,
        //محتويات الكونتينر سوف تكون في الوسط لان هنا جعلنا المحاذاه في الوسط
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            //Container(width: 200, height: 200, color: Colors.yellow),
            //Container(width: 100, height: 100, color: Colors.blue),
            Container(
                width: 400,
                height: 400,
                color: Colors.green,

                /*
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: <Widget>[
                  Text('text 1', style: s2),
                  Text('text 2', style: s2),
                  Text('text 3', style: s2),
                ],
              ),

              */

                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('te1', style: s2),
                        Text('te2', style: s2),
                        Text('te3', style: s2),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('te1', style: s2),
                        Text('te2', style: s2),
                        Text('te3', style: s2),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
