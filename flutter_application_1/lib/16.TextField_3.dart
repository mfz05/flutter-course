//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Text Field Part 3 Controller
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';

//هذا الدرس استكمال للدروس السابقة
//في هذا الدرس سوف نكمل بعض الخصائص
//مثلا في الحقل الاول سوف نضيف خاصية ماكس لاينس خارج الديكوريشن maxLines: 2,
//هذي الخاصية تجعلني احدد اقصى عدد من الاسطر في الحقل
//وبالتالي حجم الحقل يكبر كلما كثرنا عدد الاسطر
//الخاصية الاخرى هي تكست الاين وهي محاذاة النص وممكن نعطيها اي تكست
// ليس شرط في الحقول النصية فقط تكتب خارج الديكوريشن textAlign: TextAlign.center,
//هذي الخاصية نستخدمها في ارقام التلفون لاضافة رقم مفتاح اتصال دولة معينة
// بحيث تكمل كتابة رقم التلفون من بعده وهي ليست خاصة بالتلفونات فقط
//وانما عامة لاضافة اي نص ثابت تريده سواء في بداية الحقل او في نهاية الحقل
//هذي الخاصية تكتب داخل الديكوريشن وحتى لايظهر النص ملاصقا نترك مسافة
//نص ثابت في البداية prefixText:
//نص ثابت في النهاية suffixText:
//!الان سوف نتعلم كيفية استقبال القيمة من المستخدم وكيف نتعامل معها
//الان سوف نقوم بعمل زر بحيث انه ياخذ النص المدخل في احد الحقول ويعرضه في حقل اخر
//لانه في البرامج المتقدمة يكون حفض النص في قاعدة بيانات
//ولكن هنا لايوجد قاعدة بيانات والتطبيق مبسط
//سوف نقوم باضافة كونتينر جديدة ونضيف لها زر
//ونضيف له جميع الخصائص التي شرحناها في الدروس حق الازرار
//سابقا عملنا فلوت اكشن بوتن لتغيير الثيم من ابيض الى اسود والعكس
//هنا اذا اردنا لون نص الزر يتغير مع لون الثيم نختار له لون اسود او ابيض
//ويجب ان نعطيه لون بالمتغيرات التي عملناها يعني لون ابض حرف دبليو واسود بي
//لكي تيغير لون نص الزر مع تغير الثيم من خلال الباراميتر textStyle:TextStyle(color: b),
//!قرائة النص من الحقل يتم عن طريق خاصية من خصائص التكست فيلد هي الكونترولر
//يوجد عدة انواع من الكنترولر
//سوف نقرا النص من الحقل الاول ونضيف له الباراميتر كونترولر
//نعرف الكنترولر خارج الديكوريشن وقبل هذا نعرف متغير خارج الدالة بيلد
//نعطيه اي اسم ويساوي اوبجكت من نوع تكست ايديتينق كونترولر اي كونترولر من نوع نصي
//var myController = TextEditingController();
//الان نضيف بارامتير اسمه كونترولر الى الحق الاول وقيمته هي المتغير ماي كونترولر
// controller: myController,
//الان اي نص يدخله المستخدم سوف يتم تخزينه في المتغير ماي كونترولر
//فلو اردنا استخدام هذا النص علينا فقط استدعاء المتغير ماي كونترولر
//الان سوف نستخدم هذا الماي كونترولر بداخل الزر قت فاليو في الباراميتر اون برسد
//في البداية اولا سوف ننشئ متغير خارج الدالة بيلد نوعه استرينق سوف نسميه str
//سوف نستخدم هذا المتغير بداخل الزر في الباراميتر اون برسد
//لكي يخزن قيمة النص اللي سوف نستخرجه من الكونترولر ماي كونترولر
//str = myController.text;
//الان عندنا النص موجود في المتغير اس تي ار
//لو نريد ان نعرض هذا النص في اي مكان نستدعي فقط المتغير اس تي ار
//الان سوف نجعل اسم الحقل الاول الليبل تكست يساوي str
//بحيث انه اي نص ندخله في الحقل الاول عند الضغط على الزر يظهر هذا النص كاسم للحقل الاول
//
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
  var str = 'Text feild';
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
                            /*
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,color: g),
                          borderRadius: BorderRadius.circular(60.0),
                        ),
                        */
                            fillColor: br,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: g),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            labelText: str,
                            labelStyle: TextStyle(fontSize: 30, color: r),
                            hintText: 'Enter text',
                            hintStyle: TextStyle(fontSize: 20, color: w),
                            prefixText: 'نص ثابت في البداية',
                            suffixText: '##' //نص ثابت في النهاية
                            ),
                        controller: myController,
                        //textAlign: TextAlign.center,تجعل محاذاة النص في الوسط
                        maxLines: 2,
                        style: TextStyle(color: w),
                        keyboardType: TextInputType.text, //كيبورد نصي
                      )),
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
                          labelText: 'Name',
                          labelStyle: TextStyle(fontSize: 30, color: r),
                          hintText: 'Enter name',
                          hintStyle: TextStyle(fontSize: 20, color: w),
                          //icon: Icon(Icons.person_outline),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: bl,
                          ),
                        ),
                        style: TextStyle(color: w),
                        keyboardType: TextInputType.text, //كيبورد نصي
                      )),
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
                            labelText: 'Email',
                            labelStyle: TextStyle(fontSize: 30, color: r),
                            hintText: 'Enter Email',
                            hintStyle: TextStyle(fontSize: 20, color: w),
                            //icon: Icon(Icons.alternate_email)),
                            prefixIcon: Icon(
                              Icons.alternate_email,
                              color: bl,
                            )),
                        style: TextStyle(color: w),
                        keyboardType:
                            TextInputType.emailAddress, //كيبورد من نوع ايميل
                      )),
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
                            labelText: 'Password',
                            labelStyle: TextStyle(fontSize: 30, color: r),
                            hintText: 'Enter password',
                            hintStyle: TextStyle(fontSize: 20, color: w),
                            //icon: IconButton(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              //icon: Icon(Icons.visibility),
                              icon: Icon(passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              color: bl,
                            )),
                        style: TextStyle(color: w),
                        keyboardType:
                            TextInputType.visiblePassword, //كيبورد للبارسوورد
                        //obscureText: true,
                        obscureText: passwordVisible,
                      )),
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
                          labelText: 'Phone number',
                          labelStyle: TextStyle(fontSize: 30, color: r),
                          hintText: 'Enter phone number',
                          hintStyle: TextStyle(fontSize: 20, color: w),
                          //icon: Icon(Icons.phone, color: Colors.blue)),
                          prefixIcon: Icon(Icons.phone, color: Colors.blue),
                          prefixText: '+967 ',
                        ),
                        style: TextStyle(color: w),
                        keyboardType:
                            TextInputType.phone, //كيبورد ارقام التلفون
                      )),
                  Container(
                    //!كونتينر الزر قت فاليو
                    margin: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('Get Value',
                          style: TextStyle(fontSize: 30, color: b)),
                      onPressed: () => setState(() {
                        str = myController.text;
                      }),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: const EdgeInsets.all(60.0),
                        textStyle: TextStyle(color: b),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: w,
          onPressed: () => setState(() {
            /*
            b = Colors.white;
            w = Colors.black;
            */
            //هذي الصيغة خطاء
            //b = Colors.black ? Colors.white : Colors.black;
            //هذي الصيغة الصحيحة
            b = b == Colors.black ? Colors.white : Colors.black;
            w = w == Colors.white ? Colors.black : Colors.white;
          }),
        ));
  }
}
