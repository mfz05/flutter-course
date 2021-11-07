//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Card & List View
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
import 'package:flutter_application_1/24.info.dart';

//الكارد هي عبارة عن ويدجت تعطينا بعض التنسيقات الجاهزة مثل الظل والاطار وغيرها
//الكارد والاستاك يعتبرون كونتينر وكل واحد واحد يحتوي على تنسيقات معينة
//! الكارد والاستاك تسمى content container
//الان سوف نستخدم نفس التطبيق السابق الذي شرحناه في الدرس 24
//وسوف نغير بدل ان تكون المحتويات المرجعة من دالة الماب
//بداخل كونتينر سوف نجعلها بداخل كارد اي بطاقة
//الكارد لايدعم البادينق ويحتوي بدل عنها المارجن
//الباراميتر الفيشن يعطينا مستوى بروز الكارد عن الكونتينر فلو اعطيناه قيمة صفر
// فانه يكون في مستوى الكونتينر وبالتالي لايظهر الشدو الظل  اذا اردنا الظل
// ان يظهر علينا ان نعطي الالفيشن قيمة اكبر حتى يرتفع الكارد ويظهر الظل
//!الان نحن نريد ان نباعد بين البطاقات وبما انه لايوجد بايدن في الكارد
//!لذلك ممكن اننا نقوم باحاطة الكارد بكونتينر ثم نستخدم بايدن بداخل الكونتينر
//!لكي يباعد بين محتويات الكونتينر ومحتوياته هي عبارة عن كارد
//!وبما انه لن نستخدم اي شي من خصائص الكونتينر ونحنا اصلا نبغى البيدن فقط
//!لذلك بدل ان نستخدم الكونتينر يجب ان نستخدم الويدجت بيدن افضل لانها اصلا خاصة لهذا الغرض
//كذلك نحتاج ان نبعد المحتويات الداخلية لكل بطاقة عن الاطار الخارجي للبطاقة
//لذلك ممكن ان نحيط العمود الذي بداخل الكارد بالويدجت بيدن
//الان ماذا لوكان عندي اكثر من خمس اوبجكتات مثلا 7 اوبجكت او اكثر
// عندها سوف يكون لدي 7 بطاقات عندها سوف يحدث خلل في شاشة التطبيق
// لانه لايستطيع عرض كل هذي البطاقات في الشاشة لان العمود المفروض ياخذ
// ارتفاع الشاشة بالكامل لكن المحتويات صارت اكبر من ارتفاع الشاشة
//!لذلك المفروض ان اضع العمود في سكرول فيو لكي اجعل الصفحة تدعم السكرول
// وتنزل الى اسفل لعرض باقي المحتويات
//!السؤال هنا هل نعمل احاطة للعمود بالويدجت سينقل تشايلد سكرول فيو
//! او نعمل احاطة لكل الكارد
//اذا عملنا احطاطة للعمود فقط بالسكرول فانه كاننا نعمل سكرول
// بداخل كل كارد لحالها فقط وهذا خطأ لاننا اصلا لانحتاج لهذا الشي
//!لذلك المفروض اننا نعمل احاطة للكارد كلها ايضا هذا لاينفع
//!وانما يجب ان نعمل احاطة للعمود الخارجي الذي انشأنا بداخله الدالة ماب
//! التي ارجاعت لنا الكارد
//نعمل احاطة بودجت ثم نكتب اسمها child: SingleChildScrollView

//!كذلك ممكن بدل استعمال سنقل تشايلد سكرول مع عمود ممكن نستخدم ويدجت جديدة
//!هي لسيت فيو List View
//!لكي نختصر كل هذا
//!سوف نستكمل بقية هذا الدرس في ملف Card_ListView_2.dart

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
        child: SingleChildScrollView(
          //اذا اردنا استخدام اللست فيو نحذف هذي
          // الويدجت ونستبدل العمود الذي تحتها فقط ب لست فيو وكل شي يبقى نفسه
          child: Column(
            children: [
              ...li.map((val) {
                return Padding(
                  //هنا قمنا باحاطة الكارد بودجت بيدن لكي نستفيد من البيدن
                  padding: EdgeInsets.all(4.0),
                  child: Card(
                    color: Colors.deepOrange,
                    shadowColor: Colors.greenAccent, //لون الظل
                    elevation: 100, //مستوى ارتفاع الكارد عن الكونتينر
                    child: Padding(
                      //هنا قمنا باحاطة العمود بودجت بيدن لكي نستفيد من البيدن
                      //لترك مسافة بين محتويات كل بطاقة والاطار الخارجي للبطاقة
                      padding: const EdgeInsets.all(8.0),
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
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
