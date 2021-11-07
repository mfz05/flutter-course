//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Date Picker
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//في هذا الدرس عملنا زر بحيث انه عند الضغط عليه يعطينا نافذه فيها تواريخ
// بحيث ان المستخدم يختار تاريخ معين ثم يقوم الزر بقرائة هذا التاريخ
// ثم نستطيع عرض هذا التاريخ في اي مكان نريده هذي النافذه هي ال Date Picker
//لعرض هذي النافذه فاننا نستدعي دالة جاهزة في فلاتر تقوم بعرض التواريخ
//ممكن ان نقوم بانشاء دالة نجعلها تبني نافذة الديت بيكر ثم نستدعيها في الزر
//من خلال الباراميتر اون برسد
//تحتوي دالة الديت بيكر على باراميترات ريكوايرد showDatePicker
//الباراميتر كونتكست نمرر له كونتكست
//الباراميتر انيشيال ديت نمرر له ديت تايم دوت ناو كتاريخ افتراضي يبدا من عنده
//الباراميتر فيرست ديت هو اول تاريخ مسموح يعني مثلا 2018 لايمكن يختار تاريخ قبله
//الباراميتر لاست ديت هو اخر تاريخ مسموح يعني لايمكن يختار تاريخ بعده
//الان نمرر هذي الدالة في الباراميتر اون برسد نمررها فقط ولاننفذها يعني نكتب اسمها فقط
// onPressed:datePicker,
//الان ممكن ان نكمل دالة الشو ديت بيكر ونضيف لها الدالة ذن .then((value) => null)
//الدالة ذن تستقبل دالة كاملها بداخلها وتعني بعد ذلك اي بعدما نختار التاريخ
//ماذا يمكن ان نفعل به الان سوف نستخدم اف الشرطية بحيث انه اذا لم يتم
//اختيار شي نرجع لاشي واذا اختار تاريخ معين نخزن قيمة التاريخ هذا في متغير
//سوف نعرف متغير من نوع ديت تايم خارج الدالة ومن ثم داخل الدالة
// بعد اف الشرطية نجعل هذا المتغير يساوي قيمة المتغير فاليو حق الدالة ذن
//!ويجب ان نضع اسناد القيمة هذي بداخل الدالة ست استيت لانها سوف تتحدث باستمرار
//الان سوف نقوم بعرض التاريخ الذي خزناه في المتغير _selectedDate
//سنعرضه في نفس الزر مكان النص الذي عتبناه سابقا على الزر
//ممكن ايضا ان نغير صيغة التاريخ مثلما عرفنا في الدرس رقم 27 من خلال المكتبة انتل
//اولا نعرفها في ملف بب اسبك دوت يامل ثم نعمل لها امبورت هنا
// '${DateFormat.yMMMM().format(_selectedDate)}'
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

  DateTime _selectedDate = DateTime.now();
  //هنا وضعنا للمتغير قيمة لانه لايمكن ان نجعله نل والا سيظهر خطاء بسبب النل سيفتي

  void _datePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime
                .now(), //التاريخ الافتراضي هو الذي يظهر عندما تظهر النافذه مباشرة
            firstDate: DateTime(2018),
            lastDate: DateTime.now())
        .then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        _selectedDate = value;
      });
    });
  }

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
      body: Center(
        child: ElevatedButton(
          child: Text('${DateFormat.yMMMM().format(_selectedDate)}',
              style: TextStyle(fontSize: 30, color: b)),
          onPressed: _datePicker,
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              //تركت مسافات من اعلى واسفل الزر بمقدار 40 ومن الجانبين 20
              textStyle: TextStyle(color: b),
              elevation: 0.2 //البروز
              ),
        ),
      ),
    );
  }
}
