//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Margin & Padding
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
//عملنا امبورت لمكتبة ماتيريال

//في هذا الدرس سوف نتعرف على الفرق بين المارجين والبادينق
//نعرف انه اذا اردنا انشاء صف او عمود بداخل الكونتينر لانستطيع تمريرها مباشرة
//لانه لايستقبل ويدجت
//ولكن نعمل تشايلد اولا ثم نمررها للتشايلد لانه يستقبل ويدجت
//وايضا بداخل الصف او العمود لانستطيع تمرير ويدجت مباشرة ولكن اولا نمرر الباراميتر
//تشيلدرن وهي عبارة عن لست او ويدجت ثم بداخل لستة الشلدرن نمرر اي ويدجت نريدها
//الان ارتفاع الكونتينر على حسب المحتويات التي فيها فقط
//لكن اذا اردناها ان تغطي كامل الصفحة نستخدم height: double.infinity,
//اذا اردنا محتويات الصف تكون في المنتصف نستخدم داخل الصف
//mainAxisAlignment: MainAxisAlignment.center,
//من خصائص الكونتينر ايضا المارجن والبادن
// final EdgeInsetsGeometry? margin
//المارجن وهي من نوع ادج انست جومنتري
//هذا يعني انه ممكن ان نمرر لها الويدجت EdgeInsets
//الذي يحتوي على الكثير من النيمد كونستركترس مثل
/*
EdgeInsets.fromLTRB
EdgeInsets.all
EdgeInsets.only
EdgeInsets.symmetric
EdgeInsets.fromWindowPadding
*/
//هنا سوف يبعد الكونتينر عن جميع الاتجاهات بمقدار 8 margin:EdgeInsets.all(8.0)
//هنا تحدد انت كم المسافة من كل جهة لحالها
//margin:EdgeInsets.fromLTRB(5, 10, 5, 8),
//دالة السيمترك تعطينا مارجين من الاعلى ومن الاسفل لانها تحتوي على 2 اوبشنل باراميترات
//سيمترك يعني متناظر وهي تعني ان المسافة التي تضعها
// في الاعلى هي نفسها في الاسفل والتي في اليمين هي نفسها في اليسار
// margin:EdgeInsets.symmetric(vertical:8.0,horizontal: 18.0),
//الدالة اونلي تعطينا مسافة من جهة واحدة فقط مثلا من الاعلى فقط او من الاسفل فقط
//margin:EdgeInsets.only(top: 8.0),

//!نفس الدوال النيمد كونستركتر التي استخدمناها مع المارجن
//!هي نفسها نستطيع استخدامها مع البادينق
//!الفرق ان المارجن كما عرفنا يعطينا مسافة مابين الكونتينر وجميع الجهات الخارجية
//!اما البادينق يعطينا مسافة من داخل الكونتينر
//!بين الكونتينر والمحتوى الداخلي للكونتينر
//!مثلا بين الكونتينر والصف او العمود او النص الذي بداخل الكونتينر

//الان ماذا اذا اردت ان انضم المحتويات بداخل الكونتينر مثلا هنا عندنا صف
//وبداخل الصف في لستة الشلدرن عدد 2 تكست نلاحظ انهم متلاصقين مع بعض
//طيب اذا اردت ان اجعل بينهم مسافات بادينق
//يوجد عندنا ويدجت اسمه بادينق Padding
//مثله مثل الصف والعمود والسنتر والكونتينر
//مثلا نحدد التكست ونضغط على الهنت السراج او alt+Enter
//ونختار Wrap with padding
//وتلقائيا يعمل للتكست احاطة بالبادينق
//ممكن ايضا نعمل احاطة بكونتينر اخرى بدل ان نقوم به بشكل يدوي هو ينشئة تلقائيا
//ايضا فيه خيار لنقل هذا الويدجت الى اعلى او الى اسفل move widget down
//بدل ان نقوم به بشكل يدوي
//وممكن اننا نعمل له راب احاطة باستخدام ويدجت wrap with widget
//يعني هو يعمل احاطة تلقائيا ولكن يترك لنا ان نحدد اسم الويدجت
//وايضا نضيف اي خصائص اخرى نريدها لهذا الويدجت

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
        backgroundColor: Colors.orange,
        title: const Text(
          'AppBar Title',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
          color: Colors.orange[200], //لون الكونتينر
          //margin:EdgeInsets.all(8.0) ,
          //margin:EdgeInsets.fromLTRB(5, 10, 5, 8),
          //margin:EdgeInsets.symmetric(vertical:8.0,horizontal: 18.0),
          margin: EdgeInsets.only(top: 8.0),
          //padding:EdgeInsets.all(8.0) ,
          //padding:EdgeInsets.fromLTRB(5, 10, 5, 8),
          //padding:EdgeInsets.symmetric(vertical:8.0,horizontal: 18.0),
          padding: EdgeInsets.only(top: 8.0),
          //height: double.infinity,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'rrrr',
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
              ),
              Text(
                'ssss',
                style: TextStyle(color: Colors.black, fontSize: 30),
              )
            ],
          )),
    );
  }
}
