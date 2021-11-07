//!هذا اول درس في فلاتر وهو بعنوان Wedget Tree

// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
//!لان المشروع حق فلاتر فيه دالة ماين واحدة لذلك اذا اردت تشغيل هذا البرنامج
//!عدل اسم الملف الى main
//!ولانه لدينا ملف باسم main
//!ويحتوي على الكلاسات والدوال الاساسية جاهزة في اي تطبيق فلاتر
//!لذلك اذا اردنا تشغيل هذا الملف سوف نعدل اسمه الى main
//!وقت التشغيل فقط ثم سوف نرجعه الى اسمه الاعتيادي حسب فيديو دورة حسن فليح

//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
import 'package:flutter_application_1/0.Defaulet_main.dart';

void main() {
  //!هذي الدالة هي المسؤولة عن تشغيل البرنامج نستدعيها في الدالة ماين
  //! runApp(MyApp());
  //يجب ان نمرر لها اوبجكت من نوع ويدجت
  //هنا حسب مبدا البولي مورفيزم مررنا لها اوبجكت من نوع الكلاس ماي اب
  //الذي يرث الكلاس استيت لس ويدجت الذي يرث من الكلاس ويدجت
  //هذا الاوبجكت الذي مررناه لهذي الدالة هو اوبجكت مباشر
  // عن طريق استدعاء الكونستركتر يعني بدون ان نعمل ريفرنس فاريبل

  runApp(MyApp());
}

//!بما انه يجب ان نمرر للدالة رن اب اوبجكت من نوع ويدجت
//اذا لابد لهذا الكلاس ان يرث من الكلاس ويدجت
//او من اي كلاس اخر يرث من الكلاس ويدجت كما هنا حسب البولي مورفيزم
//وبعد ان يرث لابد ان يعمل اوفر رايد للدالة بيلد الموجودة في الكلاس ويدجت
//!وبما ان الدالة بيلد ارجاعها ويدجت اذا لابد ان نرجع ويدجت
//ولان كل شي في الفلاتر عبارة عن ويدجت سوف نرجع اوبجكت من الكلاس ماتيريل اب
//الخاص باعطائنا شكل التطبيق
//نلاحظ اننا رجعنا ريتيرن اوبجكت باستدعاء الكونستركتر مباشرة
//واذا ذهبا الى اكواد كونستركتر هذا الكلاس في فلاتر سوف نلاحظ
//انه يحتوي على العديد من الخصائص  وهي عبارة عن نيمد اوبشنال باراميترات
// اي اننا سوف نستدعيها بالاسم ونسند لها قيمة
//وايضا يحتوي على نيمد كونستركتر اسمه ماتيريال اب دوت روت

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //هنا مررنا الخاصية هوم وهي نيمد اوبشنال باراميتر في الكونستركتر ماتيريال اب
      //الهوم هي الصفحة الاولى في البرنامج والاسكافولد هو الويدجت اللي يحتوي
      //جميع الودجات والمكونات الاخرى في الصفحة
      //الاسكافولد هو عبارة عن كلاس يرث من كلاس استيت فل ويدجت الذي يرث من كلاس ويدجت
      //الان هذا اللي عندنا هو اوبجكت من الكلاس اسكافولد اي انه كونستركتر
      //للكلاس اسكافولد واذا شفنا الاكواد حقه سوف نلاحظ انه ايضا يحتوي على
      //باراميترات نيمد اوبشنال
      //الان سوف نستدعيها بالاسم داخل اقواس الكونستركتر اسكافولد
      //وهي مكونات الصفحة الرئيسية الاولى للطبيق
      //المتغير اب بار مررنا له قيمة وهو عبارة عن اوبجكت من الكلاس اب بار
      //الكلاس اب بار يحتوي ايضا على كونستركتر الذي لدية باراميترات نيمد اوبشنال
      //مثل المتغير تايتل الذي مررنا له اوبجكت من الكلاس تكست ولو شفنا حقه
      //الكونستركتر نلاحظ انه يحتوي على باراميتر اجباري اسمه داتا نوعه استرينق
      //وهو عبارة عن النص الذي مررناه له ويحتوي عدة باراميترات اوبشنال نيمد اخرى
      //نلاحظ انه في البودي لو كتبنا تكست على طول هكذا body: Text('body Title'),
      //فلن نستطيع ان نكتب تكست اخرى لذلك فاننا نقوم بتمرير له اوبجكت
      //من الكلاس كولمن اي عمود وكونستركتر هذا الكلاس
      //العمود يحتوي على باراميترات كلها نيمد اوبشنال ويحتوي على مصفوفة
      //اسمها تشيلد ابن من نوع ويدجت اي ان عناصرها عبارة عن ويدجت
      //سوف نمرر لها تكست وسوف تقبله لانه عبارة عن اوبجكت من نوع ويدجت
      //!باختصار اي شي يبدا بحرف كبير فهو عبارة عن كونستركتر استدعيناه
      //!لكلاس معين اي اننا عملنا اوبجكت من هذا الكلاس
      //!وبما انه كل كلاس يرث من الكلاس ويدجت او من كلاس اخر  يرث ويدجت
      //!اي انه اي اوبجكت حسب مبدا البوليمورفيزم هو عبارة عن اوبجكت من نوع
      //!الكلاس ويدجت وسوف نسميه اختصارا ويدجت
      //!اي انه كل شي يبدا بحرف كبير هو عبارة عن ويدجت

      //الان لو نلاحظ ان العناصر التي وضعناها في العمود ترتبت بشكل افقي
      //اذا اردناها ان تترتب بشكل عمودي فاننا نمرر للبودي صف بدل العمود Row
      //سوف نمرر للكونستركتر كولمن متغيرات اخرى مع المصفوفة تشيلدرن
      //اذا اردنا العمود يكون في وسط الصفحة فاننا اولا نمرر للبودي اوبجكت
      //من الكلاس سنتر ثم نمرر له النيمد باراميتر تشيلد وهذي التشيلد نمرر لها
      //الاوبجكت كولمن بجميع محتوياته
      //طريقة اخرى وهي اضافة العمود بداخل كونتينر بدل كلمة سنتر Container
      //لكن الكونتينر تحوي العمود فقط ولكن لاتجعله في الوسط
      //اذا اردنا جعله في الوسط نمرر له الباراميتر alignment
      //ثم نجعل هذا الالينمنت في الوسط Alignment.center

      //!الان نلاحظ انه صار عندنا تداخل في الكود يعني انه صارت عندنا ودجت
      //!بداخل ويدجت بداخل ويدجت وهكذا
      //!وهذا مايسمى بالويدجت تري Wedget Tree
      //ونلاحظ انه فيه انواع مختلفة من الويدجت فيه ويدجت ظاهرة ومخفية
      //الويدجت الظاهرة مثل Text(),Card(),RaisedButton(),...
      //الويدجت المخفية مثل Row(),Columen(),ListView(),...
      //!الويدجت الظاهرة هي كل مايراه المستخدم
      //!الويدجت المخفي ونستفيد منه اعطائنا الهيكلية والتحكم في الويدجت الظاهرة
      //!فيه نوع اخر من الويدجت وهو الكونتينر وهو ويدجت مخفي يستخدم لتنسيق
      //!المحتويات التي بداخله ولكن ممكن ان نجعل الكونتينر مرئي اذا اعطيناه
      //!بعض الخصائص وبهذا فان الكونتينر ممكن يكون مرئي او غير مرئي
      //!ولكي نجعل الكونتيرن مرئي ممكن نعطيه لون معين من خلال تمرير النيمد
      //!باراميتر كولور ونعطيها قيمة فيصبح الكونتينر مرئي

      //!الفرق بين السنتر والكونتينر هو ان السنتر ويدجت غير مرئي ولا نستطيع
      //!ان نجعله مرئي وبالتالي لايمكن ان يستقبل نيمد باراميتر كولور حق اللون
      //!بينما الكونتينر نستطيع ان نجعله مرئي بان نمرر له الباراميتر كولور

      home: Scaffold(
          appBar: AppBar(
            //هو الشريط الذي في راس الصفحة
            title: Text('AppBar Title'),
          ),
          //body: Text('body Title'),
          /* body: Column(
            mainAxisAlignment: MainAxisAlignment.center,//لجعل النص في وسط العمود
            children: <Widget>[//ثلاثة عناصر تكست في العمود
              Text('body Title'),
              Text('body Title'),
              Text('body Title'),
              ],*/
          /* body: Row( // هنا صف واحد وفيه ثلاثة عناصر
          children: <Widget>[
            Text('body Title'),
            Text('body Title'),
            Text('body Title'),
            ],*/

          /*
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('body Title'),
              Text('body Title'),
              Text('body Title'),
            ],
            */
          body: Container(
              color: Colors.yellow,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('body Title'),
                  Text('body Title'),
                  Text('body Title'),
                ],
              ))
          //floatingActionButton: ,
          ),
    );
  }
}
