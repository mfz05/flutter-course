//!هذا درس من دورة فلاتر ل حسن فليح بعنوان passing data between screens
//!هذا الدرس تابع للدرس السابق رقم 32
//!ولكن هنا سوف نتعرف على كيفية تمرير البيانات بين الصفحات المختلفة

import 'package:flutter/material.dart';
import '33.PassingDataBetweenScreens_1.dart';

//هنا نعمل نفس اللي عملناه في Screen1
//

class Screen2 extends StatelessWidget {
  final String str2;
  Screen2(this.str2);

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return Screen1('data passed from screen 2');
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            Text(str2, style: TextStyle(fontSize: 35)),
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
