//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Card & List View
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
import 'package:flutter_application_1/24.info.dart';

//!هنا سنستكمل الدرس من حيث وقفنا وذلك لكي لانضل نعدل على الكود كل مرة
//!هنا سوف نبدا باستخدم ليست فيو بدل عن سينقل تشايلد سكرول مع عمود
//اللست فيو هي تقريبا نفس العمود ولكن يوجد نوعين منها هما
//! لست فيو الاعتيادية التي تحتوي بداخلها لست او تشيلدرن ListView(children:[])
//!والتي هي في الاساس مكونة من عمود وسينقل تشايلد سكرول فيو مجتمعين مع بعض

//!لست فيو النوع الثاني هي الكونستركتر لست فيو دوت بيلدر ListView.builder()
//!الفرق بين الاولى والثانية هو ان الثانية البيلدر تقوم بتحميل العناصر الضاهرة فقط
//!والعناصر الاخرى تبقى مخفية حتى نحركها للاعلى
//ممكن ان نعتبر هذا عيب ولكن ممكن ان نعتبره ميزةخصوصا في البرامج
// التي تحتوي عناصر كثيرة جدا او عدد غير محدد من العناصر فيفضل استخدام البيلدر
// لانه لايقوم بتحميل الا العناصر الظاهرة فقط
//هذا الشي فائدته انه يخفف الحمل على الذاكرة
//اذا اردنا استخدام الليست فيو النوع الاول نرجع للملف Card_ListView_1.dart
//نحذف الويدجت سينقل تشايلد سكرول فيو
//ونستبدل العمود الذي تحته فقط ب لست فيو وكل شي يبقى نفسه
//هنا الان سوف نستخدم ListView.builder
// الباراميتر itemCount:
//نعطيه عدد عناصر اللست ممكن نعطيه اي رقم لكن هنا عندنا لستة li
//لذلك نعطيه طول اللست li.length
// الباراميتر itemBuilder:
//يستقبل دالة فيها اثنين باراميترات الباراميتر الاول كونتكست نعطيه اى رمز
// لكن يفضل اعطائه ctx
//الباراميتر الثاني هو عبارة عن اندكس نعطيه اي رمز لكن يفضل اعطائه index
/*
itemBuilder: (ctx,index){
 return 
 },
*/
//الان هي تقوم بعمل ارجاع ل ويدجت واكيد الويدجت التي تقوم بارجاعها هي
// البيدن التي ترجعها الدالة ماب والتي يوجد بداخلها الكارد ومحتوياتها
//بالتالي فاننا ننسخ البيدن ومحتوياتها كلها ونضعها في الارجاع حق الايتم بيلدر
//ونحذف الدالة ماب
//الان بعد الحذف سوف يظهر عندنا خطاء في المتغير فال اللي تبع للماب val
//الان نبغى نعرف نستبدل المتغير فال باي متغير نلاحظ ان وضيفة المتغير فال هي المرور على كل عناصر اللست يعني كانه ياخذ اول مرة
//العنصر الاول الل اي اوف زيرو ويعني li[0]
//ثم ياخذ العنصر الثاني ال اي اوف ون li[1]
//ثم العنصر الثالث ال اي اوف تو وهكذا li[2]
//اذا اذا اردنا استبدال المتغير فال فاننا نضع بدله li[index]
//لان المتغير اندكس يمثل الاندس في دالة البيلد
//!اذا هذا خيار جيد للاشخاص الذين يريدون تجنب استخدم الماب
//! وبدل عنها ممكن يستخدمون ListView.builder
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
  //!هذي طريقة تعريف ليست اوف اوبجكت

  final List<Info> li = [
    Info(name: 'Hassan1', height: 170, date: DateTime.now()),
    Info(name: 'Hassan2', height: 175, date: DateTime.now()),
    Info(name: 'Hassan3', height: 180, date: DateTime.now()),
    Info(name: 'Hassan4', height: 185, date: DateTime.now()),
    Info(name: 'Hassan5', height: 190, date: DateTime.now()),
    Info(name: 'Hassan6', height: 190, date: DateTime.now()),
    Info(name: 'Hassan7', height: 190, date: DateTime.now()),
  ];

  var b = Colors.black;
  var w = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        title: const Text(
          'AppBar Title',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: b,
        child: ListView.builder(
            itemCount: li.length, //هذي نعطيها عدد العناصر بداخل اللست
            itemBuilder: (ctx, index) {
              //تقوم ببناء العنصر
              return Padding(
                //هنا قمنا باحاطة الكارد بودجت بيدن لكي نستفيد من البيدن
                padding: EdgeInsets.all(4.0),
                child: Card(
                  color: Colors.deepOrange,
                  shadowColor: Colors.greenAccent, //لون الظل
                  elevation: 100, //مستوى ارتفاع الكارد عن الكونتينر
                  child: Padding(
                    //هنا قمنا باحاطة العمود بودجت بيدن لكي نستفيد من البيدن
                    //لترك مسافة بين محتويات كل بطاقة والاطار الخارجي للبطاقة
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(li[index].name,
                                  style: TextStyle(
                                    color: w,
                                    fontSize: 35,
                                  )),
                              Text('${li[index].height}',
                                  style: TextStyle(
                                    color: w,
                                    fontSize: 25,
                                  ))
                            ]),
                        Text('${li[index].date}',
                            style: TextStyle(
                              color: w,
                              fontSize: 25,
                            ))
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
