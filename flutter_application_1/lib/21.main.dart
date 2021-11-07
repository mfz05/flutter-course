//!هذا ملف الدالة main
//!خاص فقط بالدرس في الملف رقم 21 لاننا جزئنا البرنامج الى عدة ملفات
//!ونريد استدعاء هذي الملفات هنا في الدالة main

import 'package:flutter/material.dart';
import '21.SplittingTheApp.dart';
import '21.test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(primaryColor: Colors.blue),
      home: const LessonTwo(),
    );
  }
}
