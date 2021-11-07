//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Images
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
import 'package:flutter_application_1/24.info.dart';
import 'package:intl/intl.dart';

//!سنتعلم في هذا الدرس كيفية اضافة صورة لمشروعنا
//سوف نضيف الصورة في البودي بحكم انه فارغ
//الصورة اما نضيفها من الانترنت او من الكمبيوتر عندنا
//اولا سوف نضيف صورة من الانترنت
//نضيف تشايلد للكونتينر حق البودي ومن ثم نضيف لها الويدجت Image
//نختار ايمج دوت نتورك الان يريد السورس اذا نذهب للانترنت ونجلب رابط اي صورة
//ونضع الرابط مكان السورس بين علامتي تنصيص child: Image.network('src')
//اذا اردنا ان نعطي الصورة عرض وارتفاع نضيفهم لها نهاية الرابط
//اذا اردناها ان تاخذ ارتفاع الشاشة اولا نجعل ارتفاع الكونتينر انفينتي
//height: double.infinity,
//فية خيار لجعل الصورة تكون على مقاس الشاشة يعني يقتطع شي منها fit: BoxFit.cover
//هذا الخيار يجعل الصورة على مقاس الشاشة ويضغطها ولايقتطع منها fit: BoxFit.fill
//يعني يعرض الصورة بالكامل في الشاشة
//الان ماذا لو عملنا عمود بداخل الكونتينر ثم وضعنا الصورة بداخل العمود
//اي اننا عملنا احاطة للصورة بعمود نلاحظ ان الصورة لاتتاثر بالقياسات التي
//عملناها في الكونتينر لان هذي القياسات تعتبر خارج العمود الذي يحتوي الصورة
//الان سوف نضيف صورة اخرى بداخل العمود وسوف نجلبها من الكمبيوتر
//الصور التي نريد اضافتها للمشروع يجب ان نضيفها لاحد مجلدات البرنامج لذلك سوف نعمل
// مجلد فرعي باسم ايمج داخل المجلد است الذي اضفنا فيه الخطوط في الدرس السابق
//مثل كل مرة نريد اضافة شي للمشروع يجب ان نعرفه في ملف الاعدادات pubspec.yaml
/*
assets:
  - assets/images/OIP.jpg
*/
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
  var bl = Colors.blue;

  //!هذي الدالة سوف نبني بداخلها البوتوم شيت
  void x(BuildContext ctx) {
    //showModalBottomSheet(context: ctx, builder: (bctx){})
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return ListView.builder(
              itemCount: li.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Card(
                    color: Colors.deepOrange,
                    shadowColor: Colors.greenAccent,
                    elevation: 100,
                    child: Container(
                      color: Colors.yellow[100],
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(li[index].name,
                                    style: Theme.of(ctx).textTheme.headline1),
                                Text('${li[index].height}',
                                    style: TextStyle(
                                      color: bl,
                                      fontSize: 25,
                                    ))
                              ]),
                          Text(
                              '${DateFormat('yyyy-MMM-dd').format(li[index].date)}',
                              style: TextStyle(
                                color: bl,
                                fontSize: 25,
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        title: Text(
          'AppBar Title',
          style: TextStyle(color: b, fontFamily: 'Quicksand'),
        ),
      ),
      /* هذا هنا الكونتينر وبداخلها الصورة قبل عمل احاطة للصورة بالعمود
      body: Container(
        // height: 400,
        height: double.infinity,
        color: b,
        child: Image.network(
          'https://www.bing.com/images/search?view=detailV2&ccid=CPBgKTFn&id=1BE121F66C255D7EDE92A04A679EDD1BA1AF32E3&thid=OIP.CPBgKTFng4HxynlD5U7SywHaEK&mediaurl=https://cdni.rbth.com/rbthmedia/images/2020.10/article/5f9c121585600a79605e68d7.jpg&cdnurl=https://th.bing.com/th/id/R.08f0602931678381f1ca7943e54ed2cb?rik=4zKvoRvdnmdKoA&pid=ImgRaw&r=0&exph=478&expw=850&q=natural&simid=608017530745092264&form=IRPRST&ck=9FCB7505338422D9602B08AABE4F1A9A&selectedindex=6&adlt=strict&shtp=GetUrl&shid=44fcc2f7-bbd8-4135-9834-9139a62b7b77&shtk=MjAgbmF0dXJhbCB3b25kZXJzIG9mIFJ1c3NpYSAoUEhPVE9TKSAtIFJ1c3NpYSBCZXlvbmQ%3D&shdk=2KrZhSDYp9mE2LnYq9mI2LEg2LnZhNmK2YfYpyDYudmE2YkgQmluZyDZhdmGIHd3dy5yYnRoLmNvbQ%3D%3D&shhk=EJ4I1UcRsZHSTU%2B8m6N6vMfmmGG5dh036LlkE8e6Pjc%3D&shth=OIP.CPBgKTFng4HxynlD5U7SywHaEK',
          //width: 300,height: 200,),
          //fit: BoxFit.cover,),
          fit: BoxFit.fill,
        ),
      ),
      */
      body: Container(
        // height: 400,
        height: double.infinity,
        color: b,
        child: Column(
          children: [
            Image.network(
              'https://www.bing.com/images/search?view=detailV2&ccid=CPBgKTFn&id=1BE121F66C255D7EDE92A04A679EDD1BA1AF32E3&thid=OIP.CPBgKTFng4HxynlD5U7SywHaEK&mediaurl=https://cdni.rbth.com/rbthmedia/images/2020.10/article/5f9c121585600a79605e68d7.jpg&cdnurl=https://th.bing.com/th/id/R.08f0602931678381f1ca7943e54ed2cb?rik=4zKvoRvdnmdKoA&pid=ImgRaw&r=0&exph=478&expw=850&q=natural&simid=608017530745092264&form=IRPRST&ck=9FCB7505338422D9602B08AABE4F1A9A&selectedindex=6&adlt=strict&shtp=GetUrl&shid=44fcc2f7-bbd8-4135-9834-9139a62b7b77&shtk=MjAgbmF0dXJhbCB3b25kZXJzIG9mIFJ1c3NpYSAoUEhPVE9TKSAtIFJ1c3NpYSBCZXlvbmQ%3D&shdk=2KrZhSDYp9mE2LnYq9mI2LEg2LnZhNmK2YfYpyDYudmE2YkgQmluZyDZhdmGIHd3dy5yYnRoLmNvbQ%3D%3D&shhk=EJ4I1UcRsZHSTU%2B8m6N6vMfmmGG5dh036LlkE8e6Pjc%3D&shth=OIP.CPBgKTFng4HxynlD5U7SywHaEK',
              //width: 300,height: 200,),
              //fit: BoxFit.cover,),
              fit: BoxFit.fill,
            ),
            Image.asset(
              'assets/images/OIP.jpg',
              fit: BoxFit.fill,
              height: 400,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: () => x(context)),
    );
  }
}
