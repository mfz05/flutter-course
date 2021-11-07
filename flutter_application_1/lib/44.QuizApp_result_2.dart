//!
//الان سوف ننشى متغير جديد لكي يستقبل قيمة المتغير توتال سكور
// الذي مررناه في اوبجكت الكلاس ريزلت في الملف ماين
// الان بدل ان نكتب Done !
//سوف نعرض مكانها نتيجة الدرجات '$resultScore'
//الان مثلا لانريد طباعة الدرجة فقط ولكن نريد عمل اف شرطية بحيث اذا كانت الدرجة
//اكبر او تساوي 70 نكتب انت رائع واذا اكبر او يساوي 40 نكتب لاباس بك
//واذا اقل من 40 نكتب انت سيئ جدا
//!لكي نعمل هذا اولا يجب ان نعرف طريقة سهلة يدعمها الفلاتر سوف توفر علينا الكثير
//!هنا وممكن مستقبلا نستخدمها في امور اخرى وهي
//ان الفلاتر يدعم مثلا ان نكتب متغير نوعه استرينق ولا نعطيه قيمة الان
// وانما نجعله ياخذ قيمة متغير اخر حسب شروط معينة باسلوب قت هكذا
/*
String get resultPhrase {
    String resultText;
    if (resultScore >= 70) {
      resultText = 'you are awesome !';
    } else if (resultScore >= 40) {
      resultText = 'pretty likable !';
    } else {
      resultText = 'you are so bad !';
    }
    return resultText;
  }
*/
//شرح هذا هو اننا عرفنا متغير اسمه ريزلت فريز ولم نعطيه قيمة مباشرة
// وانما سوف نعطيه قيمة باستخدام قيت نفتح اقواس كبيرة ونعرف المتغير
// الذي نريد الريزلت فريز ان ياخذ قيمته وهذا المتغير الداخلي اسمه ريزلت تكست
// سوف نعطيه قيمة المتغير ريزلت اسكور الذي استقبلناه من ملف الماين عبر كونستركتر
// الكلاس ريزلت سوف نعطيه قيمته بشروط وهي الموضحه في الاعلى وفي الاخير يجب ان نعمل
// ارجاع لقيمة المتغير ريزلت تكست علشان ياخذها المتغير ريزلت فريز
//الان صارت قيمة المتغير ريزلت فريز ديناميكية وليست استاتيك ثابته اي صارت وفق شروط
//لذلك فان معاملته تصبح ليست كمعاملة بقية المتغيرات بمعن انه الان سوف نعرض قيمته
// بدل ان نعرض قيمة ريزلت اسكور بشكل مباشر على الصفحة الان سوف نعرض قيمة
// المتغير ريزلت فريز وتكون هكذا مباشرة بدون علامة دولار ولا كوتيشن
// Text(resultPhrase,
//نعرضه كانه نص استرينق
//
//

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() q;
  final int resultScore;

  Result(this.q, this.resultScore);

  String get resultPhrase {
    //هذي ليست دالة وانما متغير سوفر يخذ قيمة متغير اخر فيما بعد
    String resultText;
    if (resultScore >= 70) {
      resultText = 'you are awesome !';
    } else if (resultScore >= 40) {
      resultText = 'pretty likable !';
    } else {
      resultText = 'you are so bad !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            //'$resultScore',
            resultPhrase,
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: q,
              child: Text(
                'Restart The App',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ))
        ],
      ),
    );
  }
}
