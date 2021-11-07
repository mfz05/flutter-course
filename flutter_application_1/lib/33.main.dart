//!هذا درس من دورة فلاتر ل حسن فليح بعنوان passing data between screens
//!هذا الدرس تابع للدرس السابق رقم 32
//!ولكن هنا سوف نتعرف على كيفية تمرير البيانات بين الصفحات المختلفة

import 'package:flutter/material.dart';
import '33.PassingDataBetweenScreens_1.dart';
import '33.PassingDataBetweenScreens_2.dart';

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
      home: MyHomePage(),
    );
  }
}

//!الطريقة الاولى لتمرير البيانات بين الصفحات هي عن طريق الدالة push
//مثلا نمرر استرينق بداخل اقواس كونستركتر اسكرين 1 وسكرين 2
//ونذهب الى الملف الذي فيه الكلاس سكرين 1 ونعدلة ونضيف للكونستركتر حقه
// باراميتر استرينق حتى يستقبل القيمة التي مررناها له من هنا
//الان نجحت في تمرير البيانات بين الصفحات ممكن امرر اكثر من نص او امرر متغيرات

class MyHomePage extends StatelessWidget {
  void selectScreen(BuildContext ctx, int n) {
    //Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(builder: (_) {
        if (n == 1) return Screen1('information 1');
        return Screen2('information 2'); //هنا يفهم تلقائيا حتى لو لم نكتب ايلس
      }),
    );
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
