//!هذا درس من دورة فلاتر ل حسن فليح بعنوان passing data between screens
//!هذا الدرس تابع للدرس السابق رقم 33
//!ولكن هنا سوف نتعرف على كيفية تمرير البيانات بين الصفحات المختلفة

import 'package:flutter/material.dart';
import '34.PassingDataBetweenScreens_1.dart';
import '34.PassingDataBetweenScreens_2.dart';

//!الطريقة الثانية لتمرير البيانات بين الصفحات هي باستخدام الراوت route
//سوف نمسح الاستريق الذي مررناه في الطريقة السابقة لان هذي الطريقة مختلفة تماما
//هذي الطريقة شائعة في استخدام الويب
//اول حاجة يعتبر الباراميتر هوم يعتبر راوت افتراضي
// اي انه ينقلنا تلقائيا للصفحة الرئيسية home: MyHomePage(),
//نضيف بداخل الماتيريال اب الباراميتر راوتس routes:
//هذا الباراميتر يستقبل ماب مكون من مفتاح وقيمة المفتاح استرينق
// والقيمة عبارة عن دالة كاملة نمرر فيها كونتكست ك باراميتر
// وفي البودي ترجع المتغير الذي اريد الانتقال اليه
//اي الشاشة التي اريد الانتقال اليها
//الان قيمة المفتاح للشاشة الاولى هي سلاش اكس 1 /x1
//اي عندما اريد الانتقال للشاشة الاولى اكتب سلاش اكس 1
//الان قيمة المفتاح للشاشة الثانية هي سلاش اكس 2 /x1
//اي عندما اريد الانتقال للشاشة الثانية اكتب سلاش اكس 2
//!الان ناتي الى مامعنى ان الهوم يعتبر راوت افتراضي هذا معناه ان الهوم هي سلاش فارغ
//اي انه كاننا بدل ان نكتب هكذا home: MyHomePage(),
//نستطيع ان نكتبها بهذا الشكل بداخل ماب الراوت وهي صحيحة
// '/':(context)=>MyHomePage(),
//اي هكذا مع بقية الشاشات
/*
routes: {
        '/':(context)=>MyHomePage(),
        '/x1':(context)=>Screen1(),
        '/x2':(context)=>Screen2(),
      },
*/

//!اي ان الباراميتر هوم هو عبارة عن راوت افتراضي يتم تعريفه تلقائيا في فلاتر
// home: هذا الشكل يساوي هذا الشكل '/':
//ممكن ايضا ان نحدد الانيشيال راوت اي الراوت الافتراضي اي الصفحة الافتراضية
//هو تلقائيا يكون سلاش فارغ اي صفحة الهوم '/'
// initialRoute: '/',
//لو نريد ان تكون الصفحة الافتراضية هي سكرين 1 اذا سوف يكون الانيشيال راوت هكذا
// initialRoute: 'x1/',
//الان سوف نعرف السكرين 1 و 2 في الدالة سلكت اسكرين لكي نستطيع الانتقال اليهم
//سوف نستخدم الدالة بوش نيمد Navigator.of(ctx).pushNamed(
//اي انه نحنا عرفنا في الراوت انه يوجد شاشة يتم الانتقال اليها عند كتابة اكس 1
//الان باقي اننا نعدل في الدالة سلكت اسكرين
//حتى عندما نضغط على زر الاينك ويل ينقلنا الى هذي الشاشة التي الراوت حقها هو اكس 1
//لكي نجعل الانتقال الى احدى الشاشتين سوف نستخدم اف الشرطية
// او ان لاين استيتمنت باستخدام علامات الاستفهام
//نفس الكلاس في الدرس 32 لكي نعالج تكدس الصفحات نستخدم بوش ريبليسمنت نيمد
// Navigator.of(ctx).pushReplacementNamed(
//
//الان سوف نتعرف على كيفية تمرير البيانات بين الصفحات في هذي الطريقة
//ممكن اننا نستخدم الباراميتر ارقيومنت بداخل دالة البوش نيمد او دالة البوش ريبليسمنت نيمد
//الارقيمونت تستقبل ماب من مفتاح وقيمة
//بعدما نسجل هذي البيانات المفاتيح والقيم بداخل الماب حق الارقيمونت
// ننتقل الى كلاسات الاسكرين 1 و 2 لكي نعرف كيفية التقاط القيم التي مررناها
//الان سوف نعمل تعديل في الماب حق الارقيمونت لكي نجعلها تمرر قيم مختلفة
// 1عند استدعاء كل اسكرين اي انه عند استدعاء اسكرين
//تمرر قيمة مختلفة للمفتاح وكذلك عند استدعاء اسكرين2

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter App',
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: '/',
      //home: MyHomePage(),
      routes: {
        '/': (context) => MyHomePage(),
        '/x1': (context) => Screen1(),
        '/x2': (context) => Screen2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  //!هذا ينقلنا مباشرة للسكرين 1
  /*
  void selectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushNamed(
      '/x1'
    );
  }
  */
  //!هنا اذا اردته ينقلنا الى سكرين 1 او 2

  void selectScreen(BuildContext ctx, int n) {
    //Navigator.of(ctx).pushNamed(
    Navigator.of(ctx).pushReplacementNamed(n == 1 ? '/x1' : '/x2', arguments: {
      // 'id': 10,
      // 'title': 'info',
      'id': n == 1 ? 10 : 20,
      'title': n == 1 ? 'info 1' : 'info 2',
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.orange,
          title: const Text(
            'Main Screen',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, //لجعل العناصر في المنتصف
            children: [
              InkWell(
                child: Text('Go to screen 1', style: TextStyle(fontSize: 35)),
                onTap: () {
                  return selectScreen(context, 1);
                  //الدالة سلكت اسكرين تحتاج ارقيومنت من نوع بيلدر كونتكست
                  // لذلك نمرر لها كونتكست الدالة بيلد
                },
              ),
              InkWell(
                child: Text('Go to screen 2', style: TextStyle(fontSize: 35)),
                onTap: () {
                  return selectScreen(context, 2);
                  //الدالة سلكت اسكرين تحتاج ارقيومنت من نوع بيلدر كونتكست
                  // لذلك نمرر لها كونتكست الدالة بيلد
                },
              ),
            ],
          ),
        ));
  }
}
