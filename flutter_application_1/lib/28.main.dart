//!هنا سوف نعمل ملف ماين خاص بالدرس في الملف رقم 28 فقط
//بحيث اننا سوف نضيف نوع خط خاص بالاب بار من خلال خاصية جديدة هي appBarTheme:

import 'package:flutter/material.dart';

import '28.Images.dart';

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
      theme: ThemeData(
          primaryColor: Colors.blue,
          fontFamily: 'Quicksand', //الخط حق التطبيق كلة
          appBarTheme: const AppBarTheme(
              //هذي التنسيقات خاصة فقط بالاب بار
              titleTextStyle: TextStyle(fontFamily: 'Quicksand', fontSize: 20)),
          //ممكن ان نجعل تنسيقات خاصة فقط بالنصوص كالتالي
          textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(
                  fontFamily: 'Quicksand', fontSize: 35, color: Colors.black))),
      home: const LessonTwo(),
    );
  }
}
