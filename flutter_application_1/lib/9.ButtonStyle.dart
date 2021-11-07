//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Button Style
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
//هذا الدرس تابع للدرس السابق هنا سوف نقوم باضافة الاستايلات على الازرار
//نلاحظ انه كل كونستركتر تابع لاي نوع من انواع الازرار يحتوي هذا الكونستركتر
//على باراميتر استايل من نوع بوتون استايل او نل ButtonStyle? style,
//الان نمرر اوبجكت من الكلاس بوتون استايل للباراميتر ستايل
//ونستدعي الباراميتر باك قراوند كولور ونسند له قيمة هي الكلاس MaterialStateProperty
//لان البارامتير باك قراوند كولور نوعه final MaterialStateProperty<Color?>? backgroundColor
//اي انه لازم نمرر له قيمة عبارة عن اوبجكت من الكلاس ماتيريل ستيت بروبرتي اوف كولور
//الكلاس ماتيريال استيت بروبرتي يوجد به دوال وخصائص لتلوين الزر وامور اخرى
//نستدعي الدالة الاستاتيك اول عن طريق الكلاس
//ونمرر لها اوبجكت من نوع الكلاس كولورس ونختار لون الزر .all(Colors.red)
//نضيف الباراميتر فورقراوند كولور وهو يلون النص والرموز التي على الزر
//ممكن ايضا ان نضيف لون للايقونة التي على الزر وذلك من الايقونة نفسها
//الان سوف نضيف الخاصية بادينق الى الزر وهي من نوع الكلاس ماتيريال ستيت بروبرتي
// اوف الكلاس ايدج انستس جيومنتري اي اننا نستدعي الدالة اول
// التي هي من نوع الكلاس ماتيريال استيت بروبرتي ثم نسند لها قيمة
// عبارة عن اوبجكت من نوع الكلاس ايدج انستس جيومنتري
//final MaterialStateProperty<EdgeInsetsGeometry?>? padding
//خاصية البادينق تضيف مسافات معينة جهة اليمين واليسار وخصوصا اللي يعمل هذا الشي
//هو النيمد كونستركتر EdgeInsets.all(10)
//من مركز الاكواد نلاحظ ان هذا الكونستركتر يستقبل قيمة نوعها دبل ويضيفها لجميع الجهات
//هذا الكلاس ايدج انسيتس هو اصلا يرث الكلاس ايدج انستس جيومنتري اي انه من نوعه
//علشان كذا قبله مننا
//الان سوف نضيف خاصية الالفيشن للزر وهي تعني البروز
//ونعطيها قيمة صفر يعني الزر سوف يكون مسطح بدون بروز
//ممكن ان نضيف الخاصية الفيشن للاب بار ايضا لجعله مسطح او بارز
//الالفيشن في الاب بار نعطيها قيمة مباشرة
//اما في الزر فاننا نمررها الى الدالة اول من الكلاس ماتيريال استيت بروبرتي
// ايدج تعني حافة انست يعني ادرج مسافة معينة على جميع الحواف EdgeInsets.all(8.0)
//طيب لو اردنا اضافة مسافات مختلفة لكل حافة من حواف الزر فاننا نستخدم
// الكونستركتر EdgeInsets.fromLTRB(left, top, right, bottom)
//ونضيف قيم لكل حافة على حدة

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);
  //هذا الكي المفتاح سوف يتم شرحه في دروس لاحقه

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            alignment: Alignment.center,
            //color: Colors.blueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Row 2'),
                    Text('Row 2'),
                    Text('Row 2'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: () {}, child: const Text('A')),
                    OutlinedButton(onPressed: () {}, child: const Text('B')),
                    ElevatedButton(onPressed: () {}, child: const Text('C')),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.adb_sharp),
                      label: const Text('A'),
                    ),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.adb_sharp),
                      label: const Text('B'),
                    ),
                    ElevatedButton.icon(
                      //اليفيشن يعني بارز
                      style: ButtonStyle(
                        //هنا انشأنا اوبجكت من الكلاس بوتون استايل
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(10)),
                        //MaterialStateProperty.all(const EdgeInsets.fromLTRB(5, 0, 10, 30)),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.adb_sharp,
                        color: Colors.blue,
                      ),
                      label: const Text('C'),
                    ),
                  ],
                ),
              ],
            )),
        appBar: AppBar(
          title: const Text('Home page'),
          elevation: 2,
        ),
      ),
    );
  }
}
