//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Grid View & Linear Gradient
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'dart:ui';

import 'package:flutter/material.dart';

//القريد فيو هي من عائلة اللست فيو ولكن تترتب فيها العناصر بشكل شبكة
//سوف ننشئ كونتينر في البودي ونضيف بداخلها الويدجت قريد فيو في الباراميتر تشايلد
//بداخل القريد فيو يوجد الباراميتر تشيلدرن لاضافة عدد من الويدجت وايضا
//الباراميتر قريد ديليقيت لضبط اعدادات القريد فيو gridDelegate:
//القريد فيو مدعم بالسكرولين بشكل تلقائي
/*
gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
         maxCrossAxisExtent: 200,
 */
//هذا يعني ان اقصى عرض للعنصر الواحدهو 200 بكسل في الشاشة
//الان نضيف نسبة الطول الى العرض childAspectRatio: 3/2,
//يعني ان كل نسبة 2 في العرض يقابلهانسبة 3 في الارتفاع
//يعني بما انه حددنا اقصى عرض للعنصر هو 200 بكسل وبالتالي فان الارتفاع يكون 300
/*
crossAxisSpacing: 20,
mainAxisSpacing: 20,
*/
//هذا يعني ان هناك مسافة بين العناصر في كلا المحورين الافقي والعمودي بمقدار 20
//الان سوف نضيف العناصر الى لستة التشيلدرن مثلا سوف نضيف كونتينرات
//كل كونتينر سوف تاخذ العرض المتاح لها وبما اننا حددنا اقصى عرض هو 200 بكسل
//ومثلا الجوال اللي عندنا عرضه 400 بكسل فانه في العرض سوف تظهر لنا 2 كونتينر
//الان لدينا ثلاث كونتينرات وكلهن متشابهات في الاكواد واللي يختلف فقط هو النص واللون
//تكرار نفس الاكواد غلط لان البرمجة مبنية على الاختصار
// اذا سوف ننشى دالة تعطينا كونتينر ونحنا نمرر لها فقط النص واللون
//الان سوف ننشى دالة اسمها انفو ترجع ويدجت وهي الكونتينر المطلوبة
//ولديها 2 باراميترات واحد نوعه استرينق وهو التايتل والثاني نوعه كولور وهو الكلر
//الان ننسخ احد الكونتينرات ونلصقه في ارجاع الدالة
// نغير مكان الاسترينق حق التكست ونضع فيه الباراميتر تايتل
//ومكان قيمة الكولور الباراميتر كولور واصبحت الدالة جاهزة
//الان كل ماعلينا فعله هو استدعاء الادلة انفو بداخل لستة التشيلدرن
// وتمرير لها النص واللون بعدها ترجع لنا كونتينر جاهز
/*
children: <Widget>[
info('title1', Colors.amber),
info('title2', Colors.cyan),
info('title3', Colors.pink),
],
*/
//!الان بدل ان نعطي اللون بشكل مباشر في الدالة سوف نغيره ونجعله لون متدرج
//!من خلال الباراميتر gradiant:
//هذا الباراميتر يحتاج ان اعطيه عدة الوان علشان يطلع لي منهم لون متدرج
//اقل حاجة نعطيه لونين بداخل لست ومن ثم بداية نقطة التدرج ونهاية نقطة التدرج
// من خلال الباراميترين بيقن واند begin: , end:
//نعطيهم زاوية بداية التدرج وزاوية نهاية التدرج
//الان بالنسبة للباراميتر كولور الذي استقبل قيمته من البرنامج
//في حالة لون متدرج يبغى مني اقل حاجة لونين لكن انا عندي بارايمرت واحد فقط للون
// اذا سوف استقبل لون واحد فقط ولكن في لستة الالوان سوف اجعل احد الالوان
// هو اللون نفسه واللون الثاني برضه اللون نفسه ولكن مع شفافية مختلفة
// بهذا اكون حصلت على لونين ممكن اعمل تدرج لوني بهم
// colors: [color.withOpacity(0.7),color],

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

  Widget info(String title, Color color) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(
        title,
        style: TextStyle(fontSize: 30),
      ),
      decoration: BoxDecoration(
        //color: color, هنا نستخدم هذا فقط في حالة اردنا لون واحد للمربعات
        gradient: LinearGradient(
            // او نستخدم القرادنت لعمل لون متدرج
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(15), //تعطي حواف مدورة
      ),
    );
  }

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
        padding: EdgeInsets.only(top: 15),
        child: GridView(
          /* هذي الاكواد قبل اختصارها في دالة
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Title1',
                style: TextStyle(fontSize: 30),
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Title2',
                style: TextStyle(fontSize: 30),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Title3',
                style: TextStyle(fontSize: 30),
              ),
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
            )
          ],

          */

          children: <Widget>[
            info('title1', Colors.amber),
            info('title2', Colors.cyan),
            info('title3', Colors.pink),
            info('title4', Colors.white),
            info('title5', Colors.blue),
            info('title6', Colors.brown),
          ],
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2, //ممكن نكتب بشكل مباشر 1.5
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
