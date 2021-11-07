//!هذا درس من دورة فلاتر ل حسن فليح بعنوان FAB
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';

//نوع اخر من انواع البوتون هو Floating Action Button
//الزر العائم مثله مثل اي بوتون لكن في العادة يتم استخدامه في البودي
//في اسفل الصفحة جهة اليمين
//وهو اصلا عبارة عن باراميتر من باراميترات كلاس الاسكافولد زيه زي البودي والاب بار
//اذا نستدعي فلوتين اكشن بوتن داخل الاسكافولد ثم نمرر له اوبجكت من الويدجت
//فلوتن اكشن بوتن نلاحظ في مركز الاكواد ان هذا الكونستركتر يحتوي على عدة خصائص
//نيمد اوبشنال باراميتر كثيرة من ضمنها التشايلد نضع فيها الشي اللي نرسمه
//وضعنا بداخل التشايلد صورة ايقونة الاضافة +
//ويجب استدعاء باراميتر اون برسد
//واذا عملنا رن للتطبيق تظهر الفلوتين اكشن بوتن اسفل الشاشة جهة اليمين وهو
//موقعها الافتراضي ويمكن ان نتلاعب في موقعها
//ممكن ان نغير لون الخلفية واشياء مثل اي زر لكن بشكل مباشر مثلا نعطيها لون
//بدون التعقيدات حق الازرار الاخرى اذا اردنا اللون نعمل استاليس وغيره
//الباراميتر شيب لتغيير شكل الزر نمرر له اوبجكت من نوع RoundedRectangleBorder
//لو لاحظنا مركز الاكواد فان الباراميتر شيب نوعه ShapeBoarder
//لذلك لازم نمرر له قيمة من نفس هذا النوع وبالتالي فان الاوبجكت الذي مررناه له
// هو من نوع راوندد ريكتانقل بوردر وهذا يرث من كلاس اخر هو OutlinedBorder
//وهذا الكلاس اوت ليند بوردر يرث ايضا من الكلاس المطلوب ShapeBorder
//بالتالي فاننا صحيح اعطيته اوبجكت من كلاس راوندد ركتانقل بوردر
//لكن في الاخير هو من نوع شيب بوردر المطلوب
//!هذا الكلاس يوجد في حقه الكونستركتر اثنين باراميترات استخدمنا منها borderRadius:
//ومررنا له النيمد كونستركتر من نفس نوعه BorderRadius.all
//الذي يطلب باراميتر ريديس ويعطيه لجميع الجهات الاربع للزر
//وبالتالي مررنا له نيمد كونستركتر من الكلاس Radius
//لانه يطلب نوع ريديس فيقبل النيمد كونستركتر Radius.circular
//لان الدالة اول تريد اي شي نوعه Radius
//بعدها نمرر له اي قيمة لوعطيناه صفر سوف يصبح مربع
//!الان نمرر له الباراميتر الثاني وهو side:
//وهو الجوانب الاطار وهو يقبل قيمة من نوع BorderSide
//كونستركتر الكلاس بوردر سايد يوجد بداخله عدة باراميترات لها قيم افتراضية
//ممكن ان نعدل على هذي الخصائص
//!ممكن ان الخصائص التي في هذا النوع من الازرار غير كافية لي واردن ان اتوسع
//مثلا اردت ان اضيف تكست ليبل على الزر وغيرها هذا ممكن من خلال extended
//نكتب نقطة ثم كلمة اكستندد بعد اسم الزر FloatingActionButton.extended()
//الان كاننا غيرناه الى زر من نوع اخر لكن كل الاخصائص في الاسفل موجودة
//الا الباراميتر تشايلد فانه غير موجود فيه وانما نستبدله بالباراميتر
//ايكون وهو نفس التشايلد بالتالي لايتغير شي
//بالتالي ممكن نستخدم الفلوتين اكشن بوتن بدون الاكستندد
//او مع الاكستندد لكن نستبدل التشايلد بالايكون
//!نلاحظ ان الفلوتين اكشن بوتن هو عبارة عن زر اعتيادي مثل الازرار الاخرى
//لانه اصلا عبارة عن ويدجت وبالتالي اذا نسخنا الكود حقه ولصقناه في البودي
//بداخل الكونتينر في وسط احد الاعمدة او الصفوف مع الازرار الاخرى
//سوف ننسخ من عند اسم الويدجت وليس من اسم الباراميتر يعني من FloatingActionButton
//الان سوف تظهر فلوتين اكشن بوتن جديدة في البودي مع الازرار الاخرى
//!يوجد عناصر اخرى مرتبطة بالاكشن بوتن وهو floatingActionButtonLocation:
//وعنصر اخر خاص بالانيميشن سوف نشرحه لاحقا
//هذا العنصر فلوتن اكشن بوتن لوكيشن يكتب خارج الفلوتن اكشن بوتن في الاسكافولد
//وهو يحدد مكان موقع زر الفلوتن اكشن بوتن
//هذا الخيار سوف يجعل الزر في الوسط FloatingActionButtonLocation.centerFloat

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
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  IconButton(
                      onPressed: () {
                        print('Button 1 clicked!');
                      },
                      icon: const Icon(Icons.add_reaction_outlined)),
                  FloatingActionButton.extended(
                    label: const Text('add'),
                    icon: const Icon(Icons.add),
                    onPressed: () {},
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.red,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      side: BorderSide(color: Colors.yellow, width: 6),
                    ), //لتغيير الشكل
                    splashColor: Colors.green, //يظهر هذاللون عند الضغط على الزر
                  ),
                ]),
              ],
            )),
        appBar: AppBar(
          title: const Text('Home page'),
          elevation: 2,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
          backgroundColor: Colors.blue,
          foregroundColor: Colors.red,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            side: BorderSide(color: Colors.yellow, width: 6),
          ), //لتغيير الشكل
          splashColor: Colors.green, //يظهر هذاللون عند الضغط على الزر
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        /*
        floatingActionButton: FloatingActionButton.extended(label: const Text('add'))(
          icon: const Icon(Icons.add),
          onPressed: () {},
          backgroundColor: Colors.blue,
          foregroundColor: Colors.red,
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(30)),
              side: BorderSide(color: Colors.yellow,width: 6),
              ), //لتغيير الشكل
          splashColor: Colors.green,//يظهر هذاللون عند الضغط على الزر

        ),
        */
      ),
    );
  }
}
