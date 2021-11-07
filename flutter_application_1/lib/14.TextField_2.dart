//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Text Field Part 2 Visibility
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';

//في هذا الدرس سوف نكمل مابداناه في الدرس السابق
//الان نريد عمل ايكون بوتون زر على شكل ايقونة وهي عبارة عن رمز العين
//بحيث اننا اذا ضغطنا عليه يظهر لنا الباسوورد اللي ادخلناه
//واذا ضغطنا عليه مرة ثانية يخفي الباسوورد
//موجود خاصية الايكون من ضمن باراميترات كونستركتر انبوت ديكوريشن
//نضيفها ونسند لها اوبجكت ايكون بوتون ونفتح اقواس الكونستركتر ونضيف باراميتراته
//الان نحن نريد انه عندما يتم الضغط على الزر يتم اظهار الباسوورد وايضا
//تغيير شكل الايقونة الى عين وعليها خط واسمها visibility_off
//وكذلك عندما نضغط على الزر مرة اخرى يرجع الايقونة السابقة ويخفي الباسوورد
//اي انه اريد ان احول بين انواع البوتون في كل مرة اضغط على البوتون نفسه
//في البداية بعدما فكرنا كيف نسويها سوف نعرف متغير من نوع بوليان بداخل الكلاس
//وخارج الدالة بيلد ونعطيه قيمة ترو bool passwordVisible = true;
//وبما ان البراميتر اوه بي سيكيور تكست هو المسؤول عن اخفاء النص obscureText: true,
//وقيمته ترو اذا ممكن ان نعطيه المتغير اللي سويناه وهو باسوورد فيسيبل
//بدل ان نعطيه ترو بشكل مباشر لان هذا المتغير قيمته ترو
//الان كل اللي علينا ان نسويه هو اننا نقلب قيمة المتغير passwordVisible
//من ترو الى فولس حتى يظهر الباسوورد وعندما نضغط عليه مرة ثانية يقلب القيمة الى ترو
//اذا سوف نكتب في الخاصية اون برس في الايكون بوتون passwordVisible = !passwordVisible;
//ولاننسى ان نمرره بداخل الدالة ست استيت علشان اجعل له استيت مثلما شرحناه في درس الاستيت
/*
onPressed: () {setState(() {passwordVisible = !passwordVisible;});
*/
//عندما نضغط الزر ينفي المتغير باسوورد فيسيبل ويحول قيمته من ترو الى فولس
//وعندما نضغطه مرة اخرى ايضا يحول قيمته من فولس الى ترو
//وبهكذا يظهر الباسوورد عند الضغط ثم يرجع يختفي عند الضغط مرة اخرى
//الان نريد عندما نضغط على الزر يتحول شكل الايقونة الى الشكل الاخر
//لذلك سوف نغير الباراميتر اكون بدل مانعطيه ايقونة بشكل مباشر سوف نستخدم شرط بداخله
//ممكن اننا نستخدم اف الشرطية لكن الافضل ان نستخدم inline conditions
//الشروط الخطية اي علامات الاستفهام
//passwordVisible? Icons.visibility : Icons.visibility_off
//هل المتغير باسوورد فيسيبل هو ترو اذا حط الايقونة فيسيبلتي والا حط الايقونة فيسيبلتي اوف
//طيب نحنا نبغى الايقونة تكون في جهة اليمين ممكن ذلك عن طريق استخدام الخاصية
// suffixIcon:
//الان نلاحظ ان هذي الايقونة هي قطعة واحدة مع الحقل بعكس ايقونات الاسم والايميل
//طيب كيف اجعل ايقونات الاسم والايميل قطعة واحدة مع حقلها وايضا اجعلها جهة اليسار
//نستخدم بدل الخاصية ايكون الاعتيادية نستخدم بدلها الخاصية prefixIcon:

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
  var c = Colors.orange;
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: c,
        title: const Text('AppBar Title'),
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            Container(
                margin: const EdgeInsets.all(8.0),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Text feild',
                    labelStyle: TextStyle(fontSize: 30),
                    hintText: 'Enter text',
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                  keyboardType: TextInputType.text, //كيبورد نصي
                )),
            Container(
                margin: const EdgeInsets.all(8.0),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(fontSize: 30),
                    hintText: 'Enter name',
                    hintStyle: TextStyle(fontSize: 20),
                    //icon: Icon(Icons.person_outline),
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                  keyboardType: TextInputType.text, //كيبورد نصي
                )),
            Container(
                margin: const EdgeInsets.all(8.0),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 30),
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(fontSize: 20),
                      //icon: Icon(Icons.alternate_email)),
                      prefixIcon: Icon(Icons.alternate_email)),
                  keyboardType:
                      TextInputType.emailAddress, //كيبورد من نوع ايميل
                )),
            Container(
                margin: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 30),
                      hintText: 'Enter password',
                      hintStyle: TextStyle(fontSize: 20),
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
                      )),
                  keyboardType:
                      TextInputType.visiblePassword, //كيبورد للبارسوورد
                  //obscureText: true,
                  obscureText: passwordVisible,
                )),
            Container(
                margin: const EdgeInsets.all(8.0),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Phone number',
                      labelStyle: TextStyle(fontSize: 30),
                      hintText: 'Enter phone number',
                      hintStyle: TextStyle(fontSize: 20),
                      //icon: Icon(Icons.phone, color: Colors.blue)),
                      prefixIcon: Icon(Icons.phone, color: Colors.blue)),
                  keyboardType: TextInputType.phone, //كيبورد ارقام التلفون
                )),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
