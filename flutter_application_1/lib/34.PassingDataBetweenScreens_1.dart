//!هذا درس من دورة فلاتر ل حسن فليح بعنوان passing data between screens
//!هذا الدرس تابع للدرس السابق رقم 33
//!ولكن هنا سوف نتعرف على كيفية تمرير البيانات بين الصفحات المختلفة

import 'package:flutter/material.dart';

import '34.PassingDataBetweenScreens_2.dart';

//الطريقة الثانية لتمرير البيانات بين الصفحات باستخدام الراوت route
//هنا سوف نمسح الكونستركتر والمتغير التي عملناها في الدرس السابق
// لان هذي الطريقة مختلفة تماما عن الطريقة السابقة باستخدام دالة البوش
//2في هذي الطريقة لا احتاج الى عمل امبورت للكلاس اسكرين
// لاننا اعتمد على التعريفات التي عملتها في الراوت
//الان نريد التقاط البيانات التي مررناها من الصفحة الرئيسية في ماب الباراميتر ارقيومنت
//وذلك عن طريق تعريف متغير داخل الدالة بيلد نعطيه اي اسم ويساوي
// final routArd = ModalRoute.of(context).settings.arguments as Map<String, Object>;
//في الاخير عملت للناتج عملية كاسكيدينق وحولت الناتج الى ماب
//بهذي الطريقة استطيع الوصول الى القيم في ماب الارقيمونت
//التي مررتها في الشاشة الرئيسية وخزنتها هنا في ماب جديدة انا عرفتها
//الان لكي اعرض اي قيمة من ماب الارقيمونت علي ان استدعي المفتاح routArg['id']
//كتبناه بهذا الشكل لان قيمته انتجر والمكان هذا يحتاج الى استرينق "${routArg['id']}"
//اما هنا على طول مباشرة كتبناه بدون علامة الدولار لان القيمة هي في استرينق
// routArg['title']
//ممكن مثلا اذا كان اسم الصفحة بدل اكس 1 لو كان اسم طويل مثلا
// ممكن ان اعرف متغير بداخل الكلاس
//مثلا اذا كان اسم الصفحة my_screen1
// static const routName = 'my_screen1';
//بما انه المتغير استاتيك اذا سوف استدعيه باسم الكلاس Screen1.routName
//الان نبدل اسم الصفحة في اي مكان باسم المتغير Screen1.routName

class Screen1 extends StatelessWidget {
  void selectScreen(BuildContext ctx) {
    //هنا ينقلنا الى سكرين 2
    //Navigator.of(ctx).pushNamed(
    Navigator.of(ctx).pushReplacementNamed('/x2');
    //اذا استخدمنا بوش ربليسمنت نيمد واستخدمنا سكرين1 في درس الدراور القادم
    //سوف يلغي زر الرجوع لذلك نستخدم بوش نيمد بدلها ونستخدم ريبليسمنت اذا
    //كنا نريد عدم رجوع المستخدم الى الصفحة الاخرى التي جاء منها
  }

  @override
  Widget build(BuildContext context) {
    final routArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        title: const Text(
          'Screen 1',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${routArg['id']}", style: TextStyle(fontSize: 35)),
            Text("routArg['title']", style: TextStyle(fontSize: 35)),
            InkWell(
              child: Text('Go to screen 2', style: TextStyle(fontSize: 35)),
              onTap: () {
                return selectScreen(context);
                //الدالة سلكت اسكرين تحتاج ارقيومنت من نوع بيلدر كونتكست
                // لذلك نمرر لها كونتكست الدالة بيلد
              },
            ),
          ],
        ),
      ),
    );
  }
}
