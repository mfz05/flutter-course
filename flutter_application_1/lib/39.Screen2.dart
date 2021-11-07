//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Pop
//!هذا الدرس تابع للملف رقم 39
//!هنا عرفنا كلاس الصفحة Screen2

import 'package:flutter/material.dart';
import '39.Drawer.dart';

class Screen2 extends StatelessWidget {
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
      body: null,
      drawer: MyDrawer(),
    );
  }
}
