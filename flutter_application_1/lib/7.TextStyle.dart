//!هذا درس من دورة فلاتر ل حسن فليح بعنوان TextStyle
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';

//اذا اردنا ان نضيف تكست الى الكونتينر فاننا اولا نمرر لها واحد من متغيرات
//الكونستركتر كونتينر لانستطيع ان نمرر لها تكست مباشرة لان التكست ويدجت
//ولو ذهبنا لنرى باراميترات كونستركتر الكونتينر سوف نلاحظ ان فيه باراميترات
//لكن ولا واحد منها يستقبل قيمة نوعها ويدجت لذلك لانستطيع ان نمرر له تكست مباشرة
//ولكن في البداية نمرر له تشايلد وهذا المتغير يستقبل ويدجت بالتالي نمرر له تكست
//ولانستطيع ان نمرر الا تشايلد واحد فقط في الكونتينر وداخل التشايلد لانستطيع
//تمرير الا تكست واحد فقط اي ودجت واحد فقط
//لذلك اذا اردنا ان نمرر اكثر من تكست داخل التشايلد يجب علينا استخدام الصف او العمود
//هنا سوف اكتب نص داخل البودي مباشرة لكي نعمل له تحسينات عن طريق TextStyle
//التكست استايل هو عبارة عن كلاس يحتوي مجموعة من الخصائص ممكن نستخدمها لتحسين الخط
//نلاحظ ان خاصية الشادو الظل نوعها ليست اي انها تستقبل فقط ليست كقيمة
//هذي اللست من نوع شادو ليست اوف شادو اور نل final List<ui.Shadow>? shadows
//لست مجبر على كتابة النوع للستة التي امررها للشادو shadows: <Shadow>[]
//او هكذا كله صحيح shadows:[]
//يعني ان كل عنصر في اللسته يجب ان يكون اوبجكت نوعه شادو اي اننا سوف نكتب
//بداخل اللست كونستركتر شادو اللي هو بيعمل لنا الاوبجكت ونمرر بداخل الكونستركتر
//اي باراميترات يقبلها سوف نعرفها اذا رجعنا الى مركز الاكواد مثل اللون وغيرها
//اهم خاصية التي تجل الشادو يظهر هي الاوفست offset:
//ونمرر لها ويدجت offset: Offset(dx, dy),
//نمرر قيمة مكان الدي اكس والدي واي
//دي اكس تجعل الظل يتحرك باتجاه اليمين للارقام الموجبة وباتجاة اليسار للسالبة
//دي واي تجعل الظل يتحرك باتجاه الاسفل للارقام الموجة والى الاعلى للارقام السالبة
//وبما ان الشدو يقبل ليست واللست تحتوي عدة عناصر اذا ممكن ان امرر لها
//اكثر من اوبجكت من الشادو يعني ظل فوق ظل فوق ظل وهكذا

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);
  //هذا الكي المفتاح سوف يتم شرحه في دروس لاحقه

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Text('Body Title',
            style: TextStyle(
              color: Colors.amber[900], //تعطي لون للنص
              //backgroundColor: Colors.black,//لون خلفية الخط
              fontSize: 50, //مقاس الخط
              fontWeight: FontWeight.bold, //حجم الخط
              //ممكن نستخدم احجام اخرى
              //fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              wordSpacing: 20, //يترك فراغات او يقرب بين الكلمات السالب يقرب
              letterSpacing:
                  10, //يباعد ويقرب بين الحروف الموجب يبعد والسالب يقرب
              height: 7, //الارتفاع بين اعلى الصفحة والنص
              shadows: const <Shadow>[
                Shadow(
                  offset: Offset(5, 10),
                  color: Colors.blue,
                  blurRadius: 10, //تحدد نسبة التغبيش والتلاشي حق الظل
                ),
                Shadow(
                  offset: Offset(5, 10),
                  color: Colors.blue,
                  blurRadius: 10, //تحدد نسبة التغبيش والتلاشي حق الظل
                )
              ],
              //decoration: TextDecoration.underline,//يجعل خط اسفل النص
              //decoration: TextDecoration.overline,//يجعل خط اعلى النص
              //ممكن ان اجمع بين خاصيتين للديكوريشن عن طريق الدالة كومباين
              //هذي الدالة تقبل باراميتر عبارة عن لست
              decoration: TextDecoration.combine(
                  [TextDecoration.underline, TextDecoration.overline]),
              decorationColor: Colors
                  .blueAccent, //يلون الديكوريشن اللي عملناه وهنا خط فوق واسفل
              decorationStyle: TextDecorationStyle
                  .double, //هنا يدبل الخط اعلى واسفل الى خطين
              //decorationStyle: TextDecorationStyle.wavy,//يجعل الخط متموج اعلى واسفل
              decorationThickness: 10, //سمك الخطين اعلى واسفل
            )),

        /*
        Container(
          //child: Text('AppBar Title'),
         child: Column(
           children: const [
             Text('AppBar Title'),
             Text('AppBar Title'),
             Text('AppBar Title'),
           ],
         ),
         */

        appBar: AppBar(
          title: const Text('Home page'),
        ),
      ),
    );
  }
}
