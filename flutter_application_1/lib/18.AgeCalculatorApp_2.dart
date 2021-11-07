//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Age Calculator App
//!هذا نسخناه من الملف رقم 16 وهنا سوف نعمل برنامج لحساب العمر
//!سوف نحذف الحقول الزائدة عن حاجتنا لكي ننفذ برنامج حساب العمر
//!سوف نستدعي هنا الكلاس والدالة الذي في الملف رقم 17
//!سوف نستدعي الكلاس ودالة حساب العمر بداخل الزر
//! في الدالة استيت في الباراميتر اون برسد
//بحيث اننا نستقبل ادخال المستخدم في احد الحقول ونخزن الادخال في الكونترولر
// ثم ناخذ النص ونمرره لدالة حساب العمر كل هذا في الزر

//بعدما استقبلنا القيمة المدخلة وحولناها الى انتجر وممرناها الى
//الكلاس والدالة انفو نلاحظ اننا اذا عملنا هوت ريلود للبرنامج
//وضغطنا على الزر قت فاليو ان البرنامج سوف يعمل بشكل صحيح
// لكن الناتج سوف يظهر في الكونسول
//لكننا نريد ان يظهر الناتج عندنا في داخل التطبيق لذلك نعمل كونتينر جديد
//الان في كونتينر عرض ناتج العمر حطينا المتغير str
//بدل المتغير ايج الذي في الدالة انفو
//والمفروض انه عندما نضغط الزر يعمل كل اللي قلناه في الاعلى وايضا يجعل قيمة
//str = age
//لكن المشكلة ان المتغير ايج ليس معرف عندنا هنا وسوف يعطينا خطا
//لان المتغير ايج معرف داخل الدالة اما اذا كان معرف خارج الدالة
//وداخل الكلاس مافي مشكلة سوف يتعرف عليه هنا لاننا استدعينا الكلاس
//واذا عدلنا هناك في الكلاس وجعلنا المتغير ايج معرف داخل الكلاس وخارج الدالة
//يجب ان نجعله استاتيك لكن هنا سوف نستدعيه باسم الكلاس ثم اسم المتغير
//str = AgeCalculator.age;
//ممكن ايضا ان نلغي الدالة انفو كلها
//ونكتب محتوياتها كلها في كونستركتر الكلاس مباشرة
//ونستدعي الكونستركتر هنا في الزر مباشرة
//AgeCalculator(int.parse(myController.text));
//

import 'package:flutter/material.dart';
import 'package:flutter_application_1/17.AgeCalculatorApp_1.dart';

//

class LessonTwo extends StatefulWidget {
  const LessonTwo({Key? key}) : super(key: key);
  //هذا في النسخ الحديثة يطلبه الكي المفتاح سوف يتم شرحه في دروس لاحقه

  @override
  State<StatefulWidget> createState() => _LessonTwoState();
  //ممكن نكتبها بطريقة البلوك العادي
  /*
  State<StatefulWidget> createState(){
    return LessonTwoState();
  } 
  */

}

class _LessonTwoState extends State<LessonTwo> {
  var b = Colors.black;
  var w = Colors.white;
  var r = Colors.red;
  var bl = Colors.blue;
  var g = Colors.green;
  var br = Colors.brown;
  var c = Colors.orange;

  var myController = TextEditingController();
  int? str = 0;
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: c,
          title: const Text('AppBar Title'),
        ),
        body: Container(
            height: double.infinity,
            color: b,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 40),
                  Container(
                      margin: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: br,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: g),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          labelText: 'Birth Year',
                          labelStyle: TextStyle(fontSize: 30, color: r),
                          hintText: 'Enter your birth year',
                          hintStyle: TextStyle(fontSize: 20, color: w),
                        ),
                        controller: myController,
                        style: TextStyle(color: w),
                        keyboardType:
                            TextInputType.number, //كيبورد من نوع ارقام
                      )),
                  Container(
                    //!كونتينر الزر قت فاليو
                    margin: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('Get Value',
                          style: TextStyle(fontSize: 30, color: b)),
                      onPressed: () => setState(() {
                        //str = myController.text;
                        // AgeCalculator.info(int.parse(myController.text));
                        AgeCalculator(int.parse(myController.text));
                        str = AgeCalculator.age;
                      }),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: const EdgeInsets.all(60.0),
                        textStyle: TextStyle(color: b),
                      ),
                    ),
                  ),
                  Container(
                    //! كونتينر لعرض الناتج واعطائنا العمر
                    margin: const EdgeInsets.all(8.0),
                    child: Text('your Age is $str Years Old',
                        style: TextStyle(fontSize: 25, color: w)),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: w,
          onPressed: () => setState(() {
            b = b == Colors.black ? Colors.white : Colors.black;
            w = w == Colors.white ? Colors.black : Colors.white;
          }),
        ));
  }
}
