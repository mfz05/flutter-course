//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Map Function
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
import 'package:flutter_application_1/24.info.dart';
//import 'package:flutter_application_1/22.test.dart';

//انشأنا ملف اخر تابع لهذا الدرس وعرفناه بداخله كلاس عادي اسمه انفو
//الان هنا سوف ننشئ عدة اوبجكتات من هذا الكلاس
//الان بعدما عرفنا هذا الاوبجكتات نريد عرضها في شاشة التطبيق لكن لايمكننا عرضها
//بشكل مباشر وذلك لانها ليست ويدجت ولكن مثلا لو اردنا عرض النص
//النص الاسترينق موجود في المتغير نيم اذا هذا يعطينا نص x1.name
//اذا ممكن اننا اضيفه الى تكست باعتبار انه نص وسوف يقبله
// child: Text(x1.name,style: TextStyle(color: w)),
//!ثم اذا اردنا اضهار النص الثاني اكس تو نحتاج الى اضافة سطر اخر وهكذا كل
//!الاسماء نحتاج الى اضافة خمسة اسطر وكل الاطوال نحتاج الى خمسة اسطر اخرى
//!والتواريخ نحتاج الى خمسة اسطر اخرى وهكذا نلاحظ انها عملية متعبة
//!ولان البرمجة اختصار للكود فالمفروض انه لانكتب الكود بهذي الطريقة البدائية
//!الحل هي دالة الماب map
//!دالة الماب تقوم بتحويل ليست اوف اوبجكت الى ليست اوف ويدجت ليتم عرضها للتطبيق
//الخطوة الاولى اننا نحول الاوبجكتات اللي عملناها الى ليست اوف اوبجكت
//ثم نريد استخدام الدالة ماب داخل تشيلدرن العمود بداخل اللستة حق التشلدرن
//نكتب اسم اللسته نقطة ماب الان الدالة ماب هي عبارة عن هاير اوردر فنكشن
//لذلك تستقبل دالة كاملة كباراميتر بداخلهاوترجع ايتربل
//الان المفروض انها تاخذ لست اوف اوبجكت وترجعها ك ليست اوف ويدجت
//حتى مايعطينا خطأ في الكود لكن المشكلة انها لاترجع لست اوف ويدجت بشكل مباشر
// وانما ترجع ايتربل لذلك نحول الناتج الى لست
// ...li.map((val){}).toList(),
//الثلاث نقاط كما درسناها في دارت تعني استخرج محتويات اللست
//المتغير فال يمر على جميع عناصر اللست يمر على كل اوبجكت واحد واحد وياخذ قيمته
//اي كاننا عملنا لوب معين وجعلناه يمر على جميع العناصر
//يعني انه اذا كتبنا هكذا يعطينا الاسم val.name
//والطول والتاريخ val.height , val.date
//الان لكي نكمل الدالة لازم نرجع شي بالتالي سوف نرجع صف اي تشيلدرن ثم لسته
//وبداخل لستة الصف سوف اكتب ثلاثة عناصر تكست العنصر الاول الاسم ولانه استرينق
//سوف يقبله بدون مشاكل
// Text(val.name,style: TextStyle(color: w,fontSize: 25,)),
//العنصر الثاني الطول ولانه رقم لن يقبله في خانة النص لذلك نجعله يستخرج قيمته
// Text('${val.height}',style: TextStyle(color: w,fontSize: 25,)),
// وكذلك التاريخ
// Text('${val.date}',style: TextStyle(color: w,fontSize: 25,)),
//عند تشغيل البرنامج نلاحظ انه يطبع لنا كل العناصر الخمسة
//وفي كل سطر الاسم والطول والتاريخ
// الان كل شي تمام لكن نلاحظ انه عند عرض الاسطر في الشاشة كل سطر يتجاوز حدود الشاشة
//ولمعالجة هذا الخلل سوف نقوم باحطة الصف ب كونتينر wrap with container
//ثم سوف نحول الصف الى عمود ونجعل فيه الاسم والطول فقط وبداخل العمود سوف نعمل صف
//ونضيف بداخل الصف التاريخ حتى يكون الاسم والطول اولا التاريخ
//الان سوف نضيف تحسينات على العمود والصف باضافة البادينق المافات الفارغة
//هذي في الصف سوف توزع الاسم والطول على كامل الصف
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// المسافة التي يتركها مابين العناصر هي ضعف المسافة التي في البداية والنهاية

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
  //هنا سوف نعرف عدة اوبجكتات من الكلاس انفو
  /*
  final Info x1 = Info(name: 'Hassan1', height: 170, date: DateTime.now());
  final Info x2 = Info(name: 'Hassan2', height: 175, date: DateTime.now());
  final Info x3 = Info(name: 'Hassan3', height: 180, date: DateTime.now());
  final Info x4 = Info(name: 'Hassan4', height: 185, date: DateTime.now());
  final Info x5 = Info(name: 'Hassan5', height: 190, date: DateTime.now());
  */
  //!هذي طريقة تعريف ليست اوف اوبجكت

  final List<Info> li = [
    Info(name: 'Hassan1', height: 170, date: DateTime.now()),
    Info(name: 'Hassan2', height: 175, date: DateTime.now()),
    Info(name: 'Hassan3', height: 180, date: DateTime.now()),
    Info(name: 'Hassan4', height: 185, date: DateTime.now()),
    Info(name: 'Hassan5', height: 190, date: DateTime.now())
  ];

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
        color: b,
        child: Column(
          /*
          children: [
            Text(x1.name,style: TextStyle(color: w,fontSize: 30)),
            Text(x2.name,style: TextStyle(color: w,fontSize: 30)),
          ],
          */

          children: [
            ...li.map((val) {
              return Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(val.name,
                              style: TextStyle(
                                color: w,
                                fontSize: 35,
                              )),
                          Text('${val.height}',
                              style: TextStyle(
                                color: w,
                                fontSize: 25,
                              ))
                        ]),
                    Text('${val.date}',
                        style: TextStyle(
                          color: w,
                          fontSize: 25,
                        ))
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
