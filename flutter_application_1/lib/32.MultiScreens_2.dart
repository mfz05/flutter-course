//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Multi Screens
//!في هذا الدرس سوف نتعلم كيفية انشاء تطبيق مكون من عدة صفحات
//!سوف ننشئ عدة ملفات بالرقم 32 وفي كل ملف عبارة عن صفحة من التطبيق
//!وملف مستقل سوف نضع بداخله الشاشة الرئيسية للتطبيق والدالة main()
//!بامكاننا اعتبار اي اسكافولد يمثل صفحة بحد ذاته
//!كل صفحة من التطبيق سوف يتم استدعائها في الملف ماين الخاص بهذا التطبيق

//! هذا ملف Screen2

import 'package:flutter/material.dart';
import 'package:flutter_application_1/32.MultiScreens_1.dart';

//
//

class Screen2 extends StatelessWidget {
  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return Screen1();
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
        child: InkWell(
          child: Text('Go to screen 1', style: TextStyle(fontSize: 35)),
          onTap: () {
            return selectScreen(context);
            //الدالة سلكت اسكرين تحتاج ارقيومنت من نوع بيلدر كونتكست
            // لذلك نمرر لها كونتكست الدالة بيلد
          },
        ),
      ),
    );
  }
}
