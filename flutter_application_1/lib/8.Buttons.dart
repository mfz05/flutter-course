//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Buttons
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';

//الان عندنا صف داخل الكونتينر ونريد اضافة صف اخر للصفحة
//لانستطيع اضافة اكثر من صف واحد او عمود واحد الى التشايلد
//لان التشايلد لايقبل الا ويدجت واحد فقط اذا كيف نعمل اذا اردنا اضافة صف او عمود اخر
//الان عندنا صف واحد اذا اردنا اضافة صف اخر او عدة صفوف فاننا نحيط هذا الصف
//نحيط الصف بعمود اي نجعل الصف بداخل العمود وبهكذا نستطيع اضافة اكثر من صف
//بداخل العمود في وقت واحد اي ان العمود يحتوي على شيلدرن والشيلدرن
//يستقبل لستة من الويدجت بالتالي فاننا سوف نمرر له عدد من ودجت الصف في اللستة
//هذي الخاصية في المحاذاة spaceBetween
//تجعل النصوص متباعدة فيما بينها
//الان في الصف الثاني الذي عملناه بداخل العمود سوف نضع فيه مجموعة من البوتون الازرار
//!يوجد ثلاثة انواع من الازرار Button
//هذي الثلاثة انواع هي كالتالي وكل نوع يظهر فيه الباراميترات الاجبارية
//FlatButton(onPressed: onPressed, child: child),
//OutlineButton(onPressed: onPressed, child: child),
//RaisedButton(onPressed: onPressed),
//المتغير النيمد باراميتر اون برسد نلاحظ انه يقبل قيمة عبارة عن دالة لذلك سوف
//نمرر له دالة فارغة لكي لايعطينا خطا اذا تركناها فارغة سوف نمرر له انونمس فنكشن
//فنكشن باقل حاجة وهي اقواس وحصرتين فقط وسف يقبلها مننا (){}
//او عن طريق لمبدا اكسبرشن ()=>(_)
//اما المتغير الاجباري تشايلد فهو يستخدم للنص الذي سوف نكتبة بداخل الزر
//مثلا اضغط هنا او ممكن ان نضع بداخله ايقونة او اي ويدجت
//الفلات بوتن هو زر مسطح غير ظاهر ولكنه قابل للضغط عليه FlatButton
//اوت لاين هو زر مسطح بس انه فيه اطار حوله OutlineButton
//رايسد بوتون اي زر مرتفع وهو الشكل الطبيعي للزر
//!بعض الاحيان لما يحدثون الفلاتر يقومون بحذف بعض الاكواد واذا جيت تكتبها
//!فانك تلاحظ ان وسطها خط ولو ضغطت عليها او مررت الماوس فوقها سوف تلاحظ
//!كلمة ديبريكايتد اي محذوف deprdcated
//!وسوف يوضح لك ايش التحديث الجديد اللي صار على هذا الكود علشان تغيره
//!مثلا هنا الازرار كان لها اسماء مختلفة
//!القديم FlatButton
//!الجديد TextButton
//!القديم OutlineButton
//! الجديد OutlinedButton
//!القديم RaisedButton
//!الجديد ElevatedButton
//بالاضافة الى هذي الانواع الثلاثة للازرار يوجد ايضا الكونستركتر اذا اردنا
//ان نضيف ايقونة الى الزر فاننا نستدعي مباشرة النيمد كونستركتر لاي زر وهو
//TextButton.icon(onPressed: onPressed, icon: icon, label: label),
//OutlinedButton.icon(onPressed: onPressed, icon: icon, label: label),
//ElevatedButton.icon(onPressed: onPressed, icon: icon, label: label),
//الان صارت البراميترات الاجبارية ثلاثة positional parameters
//الليبل مثل التشايلد نضع له اي نص اما المتغيرات الاخرى سبق شرحها
//ويوجد خصائص اخرى ممكن ان نستخدمها مع البوتن ممكن تكتشفها من مركز الاكواد

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
                      onPressed: () {},
                      icon: const Icon(Icons.adb_sharp),
                      label: const Text('C'),
                    ),
                  ],
                ),
              ],
            )),
        appBar: AppBar(
          title: const Text('Home page'),
        ),
      ),
    );
  }
}
