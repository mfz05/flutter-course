//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Pop
//!هذا الدرس تابع للملف رقم 39
//!هنا عرفنا كلاس الصفحة Screen1

import 'package:flutter/material.dart';
import '39.Drawer.dart';

class Screen1 extends StatelessWidget {
  String name = 'Mohammed';
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
      body: null,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () {
          //Navigator.of(context).popAndPushNamed('/');
          //Navigator.of(context).canPop();
          Navigator.of(context).pop(name);
        },
      ),
      //drawer: MyDrawer(),
    );
  }
}
