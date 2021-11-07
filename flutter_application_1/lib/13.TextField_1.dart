//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Text Field Part 1
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';

//نحتاج في التطبيقات الى وجود حقول نصية Text Fields
//من اجل جعل المستخدم يدخل نص ومن ثم نقرأ هذا النص ونتفاعل معاه حسب فكرة التطبيق
//في هذا الدرس سوف نشرح طريقة عمل حقول نصية
//هذي الحقول مرتبة بشكل افقي وضعنا كل حقل بداخل كونتينر وهذا الكونتينرات وضعناها
//بداخل لستة شلدرن بداخل عمود وهذا العمود وضعناه بداخل كونتينر رئيسي
//الحقول التي وضعناها بداخل الكونتينرات وضعنا مسافات فارغة من اعلى الكونتينرات
//ومن اسفل الكونتينرات وهي
/*
SizedBox(height: 40),
Container(),
SizedBox(height: 20),
*/
//التكست فيلد هو ويدجت ويحتوي على خصائص كثيرة وكل خاصية فيها تفاصيل كثرة
//احد هذي الخصائص هي الديكوريشن ونوعها انبوت ديكوريشن والذي يحتوي على
//عدد من الخصائص وكل خاصية ممكن ان نضيف لها عدد من الاستايلات مثل اللون وغيرها
//الباراميتر ليبل تكست يستخدم لكتابة اسم فوق الحقل النصي ولو ذهبنا الى مركز الاكواد
//فاننا نجد ان نوعه استرينق وليس ويدجت اي اننا بامكاننا ان نضيف له نص مباشرة
//ثم نضيف ليبل استايل الذي نوعه تكست استايل وهو مسؤل عن حجم الخط ولونه وووو
//كل باراميتر في الديكوريشن يوجد له باراميتر اخر بنفس اسمه ولكن مع استايل
//مثل ليبل تكست نضيف فيه نص اسم الحقل ويوجد ليبل استايل
//وهو مسؤول عن لون وحجم الخط وغيرها لليبل تكست
//الباراميتر هينت تكست يضع نص توضيحي بداخل الحقل
//بحيث اذا نقرت على الحقل بالماوس يختفي النص
//ويوجد لها ايضا هنت استايل نوعه تكست استايل
//الكيبورد تايب هو من خصائص التكست فيلد ويعني اننا نختار نوع الكيبورد الذي
//نريده ان يظهر للمستخدم عند النقر على الحقل النصي يعني مثلا يظهر له كيبورد ارقام
//او كيبورد احرف وهكذا
//المارجن هي من خصائص الكونتينر وتعني الهوامش
// اي المسافه الفارغة حتى لاتلتصق محتويات الكونتينر بالاطار
//اعطاء مسافة هامشية من جميع الجوانب بمقدار 8 margin:EdgeInsets.all(8.0),
//الان عملنا كونتينر واحدة فيها حقل نصي الان سوف ننسخ هذي الكونتينر
//خمس مرات لكي نحصل على خمسة عناصر كونتينر بداخل لستة الشلدرن
//الان نعدل كل الكونتينرات المنسوخة على حسب نوع الحقل النصي الذي نريده فيها
//الكونتير الثاني سوف نعدل الاسم في الليبل تكست الى name
//الهنت سوف نكتب انتر نيم وبقية الخصائص نفسها وسوف نضيف ايقونة في البداية
//الايقونة من اختصاص الديكوريشن
//نوع الكيبورد في حقل الايميل هو TextInputType.emailAddress,
//في حقل الباسوورد نضع كيبورد خاص بالباسوورد
//نلاحظ انه عندما نضغط على حقل الباسوورد تظهر الكيبورد وتغطي الحقل ولانرى الحقل
//هنا المفروض يكون عندي سكرول للصفحة بحيث اذا ضغطت على حقل سفلي وظهرت الكيبورد
// المفروض ان الصفحة تتحرك الى اعلى لكي استطيع ان اشاهد ما اكتبه في الحقل
//هذا يسمى سكرول فيو وهو عبارة عن كونستركتر نضيفه في التشايلد حق الكونتينر
//الاساسي الاول قبل اضافة العمود ونجعل العمود بجميع محتوياته بداخل هذا السكرول فيو
//حتى ان جميع المحتويات تقبل السكرولين ثم نعمل تشايلد بداخل السكرول فيو
// ونلصق جميع محتويات العمود التي عملنا لها قص علشان نضيفها بداخل السكرول فيو
//الان نلاحظ انه لما نضغط على حقل الباسوورد او الحقول التي اسفل عندما نضغط عليها
// فان الكيبورد تظهر ويصعد الحقل الى اعلى لكي يكون ظاهر لنا
//في حقل الباسوورد المفروض عند كتابة الباسوورد تكون الرموز غير ظاهرة
//لذلك نضف خاصية خارج الديكوريشن وبداخل التكست فيلد اسمها obscureText:
//هذي الخاصية تجعل الرموز حق الباسوورد مخفية وهي من نوع بوليان اي ترو او فولس
//وهي افتراضيا فولس اذا نغيرها الى ترو

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
                    icon: Icon(Icons.person_outline),
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
                      icon: Icon(Icons.alternate_email)),
                  keyboardType:
                      TextInputType.emailAddress, //كيبورد من نوع ايميل
                )),
            Container(
                margin: const EdgeInsets.all(8.0),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 30),
                    hintText: 'Enter password',
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                  keyboardType:
                      TextInputType.visiblePassword, //كيبورد للبارسوورد
                  obscureText: true,
                )),
            Container(
                margin: const EdgeInsets.all(8.0),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Phone number',
                      labelStyle: TextStyle(fontSize: 30),
                      hintText: 'Enter phone number',
                      hintStyle: TextStyle(fontSize: 20),
                      icon: Icon(Icons.phone, color: Colors.blue)),
                  keyboardType: TextInputType.phone, //كيبورد ارقام التلفون
                )),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
