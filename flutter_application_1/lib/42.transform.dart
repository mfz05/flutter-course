//!هذا درس من دورة فلاتر ل حسن فليح بعنوان transform
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main

import 'dart:math';

import 'package:flutter/material.dart';

//!هنا سوف نشرح خاصية الترانسفورم transform:
//في الدرس السابق شرحنا الويدجت ترانسفورم مع الكونستراكترات التابعة له
//الان هنا سوف نشرح خاصية الترانسفورم وهي توجد في بعض الويدجت
//على سبيل المثال الكونتينر توجد بداخله خاصية الترانسفورم
//هنا عملنا كونتينر وعملنا له بيدن وديكوريشن والوان وغيرها
//عدة تنسيقات حتى يظهر بالصورة التي نراها في التطبيق
//وعملنا برضه سلايدر بدون ان نطبع فوقه اي اسم مجرد خط وعليه مؤشر
//وعملنا فاصل بين الكونتينر والسلايدر حتى لا تلتصق مع الكونتينر
//الفاصل عملناه ب سايزد بوكس SizedBox(height: 10),
//وجعلنا قيمة الماكس مضروبة في باي علشان اي قيمة للمتغير فاليو نضعها في اي مكان
// تكون محولة تلقائيا الى الريديان اي اننا سوف نضع الدرجة مباشرة
// وهو سوف يحولها في الماكس الى الراديان اثنين مضروبة في باي يعني 360 درجة
//اضفنا للكونتينر بوكش شادو وهو عبارة عن الظل
//وعده باراميترات للتحكم في الظل مثلا انتشار الظل blurRadius: 8,
//وموقع الظل عن طريق اوفست نحدد المحور اكس المحور واي offset: Offset(0, 2),
//الان سوف نضيف الى الكونتينر خاصية التراسفورم transform:
//ونوعه ماتريكس4  اذا نمرر له ماتريكس4 ثم دوت يعطينا عدة خيارات اهمها واكثرها
//استخداما هو الروتيشن اي التدوير ويجود منه ثلاثة انواع
//transform:Matrix4.rotationX(_value),
//transform:Matrix4.rotationY(_value),
//transform:Matrix4.rotationZ(_value),
// اي ان كل نوع يدور الكونتينر على محور معين اكس وواي وزد
//المحور الافقي اكس المحور العمودي واي ومحور ثلاثي الابعاد يخترق الشاشة هو زد
//طيب اذا اردنا ان ندوره بقيمة ثابتة يجب ان نحولها الى راديان
// transform: Matrix4.rotationX(180*(pi/180)),
//يوجد طريقتين لاضافة قيمة الدرجة بطريقة الاعداد الموجبة مثلا (340*(pi/180))
//او بطريقة الدرجة بالسالب اي انه مثلا اذا اردنا تمثيل الزاوية 340 درجة اما نكتب
// (340*(pi/180))
//او نكتبها بالسالب اي كاننا اما نمشي من صفر الى 340 اعداد موجبة
//او العكس من 340 الى صفر اعداد سالبة اي هكذا (-20*(pi/180))
//هي نفسها الزاوية 340
//الان لو اردت ان اقوم بتحريك العنصر ايضا اي اعمل له ترانسليت وهي من ضمن خصائص ماتريكس4
//بالتالي يجب ان امررها بعد ان امرر الماتريكس4 ولا استطيع استدعائها لوحدها
// في الترانسفورم لانها ترجع فويد والترانسفوم يريد اي شي يرجع ماتريكس
//4 لذلك اذا كتبت ماتريكس4 ثم دوت ثم ترانسليت سوف يعطيني خطا
//لان الارجاع الان صار فويد لذلك يجب ان اعمل نقطتين دوت دوت ثم اكتب ترانسليت
// transform: Matrix4.rotationX(-20*(pi/180))..translate(10),
//! ماذا تعني دوت دوت تعين انه عن طريق الماتريكس4
//! مرة استدعيت الروتيشن ومرة ثانية رجعت استدعيت الترانسليت
//الان لكي نوضحه اكثر فان السطر هذا اللي كتبنا فيه دوت دوت هو نفسه هذا
//هذا الكود يكتب داخل الدالة بيلد لان الماتريكس4 والترانسليت
// كلها موجودة ضمن الدالة بيلد وليس ضمن الكلاس
/*
Matrix4 a = Matrix4.rotationZ(-20 * (pi / 180));
 a.translate(10);

*/
//كاننا عملنا اوبجكت اسمه ايه من الكلاس ماتريكس4 ثم استدعينا
// الخاصية ترانسلين عن طريق الاوبجكت ايه
//بالتالي اختصرنا هذا الكود كله في هذا السطر
// transform: Matrix4.rotationX(-20*(pi/180))..translate(10),
//الان سوف نعطي الترانسليت قيم جميع المحاور ولكي نعرف كيفية دوران الكونتينر
// وحركة انتقاله بالترانسليت سوف نعطي احد المحاور قيمة المتغير فاليو حق السلايدر
/*
transform: Matrix4.rotationZ(-20 * (pi / 180))
 ..translate(_value, _value, _value),
*/
//!ملاحظة السلايدر هنا سوف نستخدمة فقط لفهم كيف يدور الكونتينر حول المحاور
//يعني لكي نعرف اتجاه حركته على المحور اكس سوف نجعل قيمة اكس المتغير فاليو
// ..translate(_value, 0.0, 0.0),
// وبقية المحاور واي وزد نعطيها قيم صفر وهكذا كلما نريد نعرف كيفية الحركة
// على احد المحاور نعطيه قيمة المتغير فاليو والبقية نعطيها صفر
// ونحرك مؤشر السلايدر حتى تتغير القيمة ونرى اتجاه حركة الكونتينر
//نلاحظ انه عندما نضع قيمة الفاليو على محور زد لاتحدث حركة وذلك لان الحركة على
//محور زد لن نستطيع عملها لان المحور يخترق الهاتف بينما يمكن ان نرى الدوران فقط
//واذا اردنا ان نتخيل الحركة على محور زد عان الكونتينر داخل للجهاز وخارج منه
//وهذي الحركة مستحيل تتحقق
//
//
//

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
      initialRoute: '/',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    Matrix4 a = Matrix4.rotationZ(-20 * (pi / 180));
    a.translate(10);

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        title: const Text(
          'Demo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            transform: Matrix4.rotationZ(-20 * (pi / 180))
              ..translate(_value, _value, _value),
            //transform: Matrix4.rotationX(_value),
            //transform: Matrix4.rotationY(_value),
            //transform: Matrix4.rotationZ(_value),هذا الاكثر استخداما
            //طيب لو اردنا ان نضع لها قيمة ثابتة يجب ان تكون بالراديان
            //transform: Matrix4.rotationX(180*(pi/180)),

            width: 300,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), //تقوس حواف الكونتينر
                color: Colors.deepOrange.shade900,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.blue,
                    offset: Offset(0, 2),
                  )
                ]),
            child: const Text(
              'My Shop',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10), //يعمل مسافة فارغة بين الكونتينر والسلايدر
          Slider(
            value: _value,
            onChanged: (double val) => setState(() => _value = val),
            min: 0,
            //max: 2 * pi,
            max: 180,
          ),
        ],
      ),
    );
  }
}
