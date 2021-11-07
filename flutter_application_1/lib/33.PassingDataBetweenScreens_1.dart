//!هذا درس من دورة فلاتر ل حسن فليح بعنوان passing data between screens
//!هذا الدرس تابع للدرس السابق رقم 32
//!ولكن هنا سوف نتعرف على كيفية تمرير البيانات بين الصفحات المختلفة

import 'package:flutter/material.dart';

import '33.PassingDataBetweenScreens_2.dart';

//هنا سوف نعرف متغير داخل الكلاس ونجعله باراميتر في الكونستركتر لكي يستقبل
// القيمة التي سوف نرسلها له من الدالة سلكت اسكرين في الملف ماين
//بما اننا عملناه فاينال اذا يجب ان نعطيه قيمة
// لذلك عملناه باراميتر في الكونستركتر لذلك سوف يقبله بدون مشاكل
//الان سوف نعرض هذي القيمة الاسترينق التي حصلنا عليها ووضعناها في المتغير str
//سوف تعمل احاطة للاينك ويل ونضعه في عمود لكي نضيف ويدجت تكست نعرض فيها الاسترينق
//

class Screen1 extends StatelessWidget {
  final String str1;
  Screen1(this.str1);

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return Screen2('data passed from screen 1');
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            Text(str1, style: TextStyle(fontSize: 35)),
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
