//!هذا درس من دورة فلاتر ل حسن فليح بعنوان External Library & Font Family
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
import 'package:flutter_application_1/24.info.dart';
import 'package:intl/intl.dart';

//في هذا الدرس لاول مرة سوف نتعامل مع ملف خارج مجلد lib
//سوف نتعامل مع ملف pubspec.yaml
//من خلال هذا الملف نقوم بكتابة اعدادات التطبيق وتنصيب المكتبات الخارجية
//وتعريف الصور التي نريد تضمينها بداخل المشروع ونعرف انواع الخطوط الاضافية
//الان سوف نستخدم هذا الملف لتعديل الصيغة الخاصة بالتاريخ في تطبيقنا الذي عملناه
//في الملف رقم 26 والان نشتغل عليه نفسه في هذا الملف رقم 27 نلاحظ ان التاريخ
//الذي يظهر في البطاقات يظهر بصيغة مزعجة لذلك في ملف pubspec.yaml
//سوف نقوم بتنصيب مكتبة خارجية هي تتكفل بتنسيق التاريخ نذهب لمتصفح الانترنت
//ونكتب في البحث date format dart
//تظهر لنا مكتبة intl
//نفتحها ونذهب الى صفحة الانستال حقها سوف نجد كيفية تنصيبها
/* نضيفها بهذا الشكل وننتبة للفراغات لان هذا الملف حساس للفراغات
dev_dependencies:
  flutter_test:
    sdk: flutter
  intl: ^0.17.0
*/
//الان بعد ما نصبناها نعمل لها امبورت هنا في البرنامج
//الان نذهب الى المكان الذي تم فيه عرض التاريخ هنا Text('${li[index].date}',
//ونغيرها الى Text('${DateFormat().format(li[index].date)}',
//طبعا الدوال التي اضفناها هي موجودة في المكتبة التي استوردناها
//اذا عملنا هوت ريلود نلاحظ ان تنسيق التاريخ تغير الى شكل اخر
//يوجد ايضا تنسيقات اخرى كثيرة وممكن ان نضيف التنسيق الخاص بنا هكذا
//! Text('${DateFormat('yyyy-MMM-dd').format(li[index].date)}',
//او هكذا او نختار اي نسق نريده
//! Text('${DateFormat('yy/MMM/dd').format(li[index].date)}',
//او ممكن نستخدم مجموعة من الكونستركترات الجاهزة مثلا
//! Text('${DateFormat.yMMMd().format(li[index].date)}',
//الان مثلا لو اردت ان اجلب نص مخصص الى مشروعي بدلا عن Hassan1....
//في البداية سوف نضعها في المكان الذي نريده مثلا سوف ننشى مجلد بداخل مشروعنا
//بداخل مجلد المشروع FLUTTER_APPLICATION_1
// سوف نعمل مجلد نضع فيه ملحقات المشروع اسمه assets
//وبداخله سوف نعمل مجلد اخر اسمه fonts
//وسوف نحمل خطوط من النت ونضيفهن اليه ويجب ان نقوم بتعريف هذي الخطوط في ملف
// pubspec.yaml
//عرفنا الخطوط بهذي الطريقة
/*
fonts:
    - family: OpenSans
      fonts:
        - asset: assets/fonts/OpenSans-Regular.ttf
        - asset: assets/fonts/OpenSans-Bold.ttf
          weight: 700
    - family: Quicksand
      fonts:
        - asset: assets/fonts/Quicksand-Regular.ttf
        - asset: assets/fonts/Quicksand-Bold.ttf
          weight: 700
*/
//الان ممكن نستعمل هذي الخطوط مثلا في الثيم في ملف main
//نضيف للويدجت ثيم الباراميتر fontFamily:'Quicksand'
//يجب ان يطابق اسم الخط هنا مع الاسم الذي في ملف بب اسبك دوت يامل
//اذا اضفنا الخط في الثيم سوف يغير الخط حق البرنامج كله لكن اذا اردنا فقط
// تغيير الخط في ويدجت معين فاننا نضيف باراميتر الخط ونكتب اسم الخط
//مثلا سوف نغير خط التايتل حق الاب بار
// style: TextStyle(color: Colors.black,fontFamily:'Quicksand'),
//هذي طريقة غير مجدية والمفروض اننا نغيره من الثيم ونضيف باراميتر appBarTheme:
// عملنا ملف مين خاص بهذا الدرس وغيرنا الخط حق الاب بار من الثيم ارجع للملف ماين
//الان سوف نجعل الاسم اللي في الكارد ياخذ تنسيقه من textTheme:
//الموجود في الثيم في الملف ماين بحيث انه اي نص عندنا هنا في البرنامج نريد
//ان نعطيه نفس هذا التنسيق فقط نجلب له التنسيق من الثيم عن طريق سطر الكود هذا
// style: Theme.of(ctx).textTheme.headline1
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
  //!هذي طريقة تعريف ليست اوف اوبجكت

  final List<Info> li = [
    Info(name: 'Hassan1', height: 170, date: DateTime.now()),
    Info(name: 'Hassan2', height: 175, date: DateTime.now()),
    Info(name: 'Hassan3', height: 180, date: DateTime.now()),
    Info(name: 'Hassan4', height: 185, date: DateTime.now()),
    Info(name: 'Hassan5', height: 190, date: DateTime.now()),
    Info(name: 'Hassan6', height: 190, date: DateTime.now()),
    Info(name: 'Hassan7', height: 190, date: DateTime.now()),
  ];

  var b = Colors.black;
  var w = Colors.white;

  //!هذي الدالة سوف نبني بداخلها البوتوم شيت
  void x(BuildContext ctx) {
    //showModalBottomSheet(context: ctx, builder: (bctx){})
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return ListView.builder(
              itemCount: li.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Card(
                    color: Colors.deepOrange,
                    shadowColor: Colors.greenAccent,
                    elevation: 100,
                    child: Container(
                      color: Colors.yellow[100],
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(li[index].name,
                                    style: Theme.of(ctx).textTheme.headline1),
                                Text('${li[index].height}',
                                    style: TextStyle(
                                      color: w,
                                      fontSize: 25,
                                    ))
                              ]),
                          Text(
                              '${DateFormat('yyyy-MMM-dd').format(li[index].date)}',
                              style: TextStyle(
                                color: w,
                                fontSize: 25,
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        title: const Text(
          'AppBar Title',
          style: TextStyle(color: Colors.black, fontFamily: 'Quicksand'),
        ),
      ),
      body: Container(
        color: b,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: () => x(context)),
    );
  }
}
