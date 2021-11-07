//!هذا درس من دورة فلاتر ل حسن فليح بعنوان IconButton onPressed
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';

//هنا في الصف الثالث سوف نقوم بعمل ويدجت ايكون بوتون Icon Button
//الان صار عندنا ايقونة هي عبارة عن زر قابل للضغط
//في هذا الدرس سوف نتعلم كيف نمرر دالة في الباراميتر onPressed
//ابسط حاجة ممكن نعملها اننا نخليه يطبع نص عند الضغط على الزر
//طبعا اذا عملنا رن للبرنامج وضغطنا زر الايقونة
//فان طباعة النص سوف تكون في شاشة الكونسول
//!حالات كتابة الدالة في الباراميتر onPressed
//ممكن ان نكتب دالة اعتيادية كما في الزر الاول
//ممكن ان نكتب دالة فات ارو انونمس فنكشن كما الزر الثاني
//ممكن اننا نعرف دالة خارجية وناتي نشير لها في الباراميتر اون برسد
//!نشير لها فقط ولانستدعيها لان الاشارة تكون بكتابة اسم الدالة بدون اقواس buttonOnPressed
//!اما استدعاء الدالة يكون بكتابة اسم الدالة مع الاقواس buttonOnPressed()
//في حالة اننا اردنا ان نعيد كتابة الدالة اكثر من مرة
//لكن اين يمكن ان اكتب هذي الدالة
//!نكتب الدالة الخارجية داخل الكلاس وخارج الدالة بيلد
//لكن ماذا اذا كانت الدالة التي سوف امررها للباراميتر onPressed
//عبارة عن دالة تستقبل باراميتر عندها يجب ان اكتب لها اقواس وامرر لها قيمة
//عند كتابتها في الباراميتر اون برسد لكننا قلنا اننا نشير لها فقط
//ولانستدعيها مع الاقواس لذلك في هذي الحالة اذا اردت استدعاء الدالة كاملة
// مع اقواسها يجب ان اكتبها بداخل دالة كاملة
// مثلا ان اكتبها بداخل دالة انونمس فنكشن كما في حالة الزر رقم 4

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);
  //هذا الكي المفتاح سوف يتم شرحه في دروس لاحقه
  //!هذي الدالة الخارجية التي سوف نشير اليها من داخل الزر في الباراميتر onPressed
  //نعطيها اي اسم ونجعلها تطبع نص معين

  buttonOnPressed() {
    print('Button 3 clicked!');
  }

  //!هذي الدالة سوف نستدعيها من داخل الزر رقم 4 في الباراميتر onPressed

  buttonOnPressed2(msg) {
    print('$msg clicked!');
  }

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
                  IconButton(
                      onPressed: () => print('Button 2 clicked!'),
                      icon: const Icon(Icons.add_reaction_outlined)),
                  IconButton(
                      onPressed:
                          buttonOnPressed, //هنا اشرنا الى الدالة الخارجية ولم نستدعيها
                      icon: const Icon(Icons.add_reaction_outlined)),
                  IconButton(
                      onPressed: () => buttonOnPressed2(
                          'Button 4'), //هنا استدعينا الدالة الخارجية
                      icon: const Icon(Icons.add_reaction_outlined)),
                ]),
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
