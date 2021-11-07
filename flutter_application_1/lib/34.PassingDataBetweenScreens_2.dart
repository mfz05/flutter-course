//!هذا درس من دورة فلاتر ل حسن فليح بعنوان passing data between screens
//!هذا الدرس تابع للدرس السابق رقم 33
//!ولكن هنا سوف نتعرف على كيفية تمرير البيانات بين الصفحات المختلفة

import 'package:flutter/material.dart';
//import '34.PassingDataBetweenScreens_1.dart';

//الطريقة الثانية لتمرير البيانات بين الصفحات باستخدام الراوت route
//هنا سوف نمسح الكونستركتر والمتغير التي عملناها في الدرس السابق
// لان هذي الطريقة مختلفة تماما عن الطريقة السابقة باستخدام دالة البوش
//1في هذي الطريقة لا احتاج الى عمل امبورت للكلاس اسكرين
// لاننا اعتمد على التعريفات التي عملتها في الراوت

class Screen2 extends StatelessWidget {
  void selectScreen(BuildContext ctx) {
    //هنا ينقلنا الى سكرين 1
    //Navigator.of(ctx).pushNamed(
    Navigator.of(ctx).pushReplacementNamed('/x1');
  }

  @override
  Widget build(BuildContext context) {
    final routArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        title: const Text(
          'Screen 2',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${routArg['id']}", style: TextStyle(fontSize: 35)),
            Text("routArg['title']", style: TextStyle(fontSize: 35)),
            InkWell(
              child: Text('Go to screen 1', style: TextStyle(fontSize: 35)),
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
