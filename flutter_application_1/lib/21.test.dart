//!هذا الملف تابع للدرس في الملف رقم 21
//!لكي نتعلم كيف نجزء البرنامج الى عدة ملفات
//!اذا اردنا استعمال محتويات هذا الملف بداخل ملف الماين
//!يجب ان نعمل له استيراد هناك

//زي ما شرحنا في الملف رقم 21
//هذا الكلاس نريده ان يعمل عمل الويدجت Text
//بالضبط في الاشياء التي نريدها حاليا فقط يعني نحنا نريد النص والاستايل فقط وهي
/*child: Text(
  'ssss',
  style: s,
  )
*/
//لذلك نبني كونستركتر لهذا الكلاس
//يحتوي على باراميترين الاول متغير نوعه استرينق لكي يستقبل الاسترينق ssss
//والثاني باراميتر نوعه TextStyle
//لان المتغير اس الذي سوف نمرره له من هناك نوعه تكست استايل وايضا لان الاستايل
//نوعه تكست استايل
//الان يجب علينا ان نحصل على ارجاع من داخل هذا الكلاس بهذا الشكل
//return Text(_text,style:_textStyle);
//الان نلاحظ انه فيه شي ناقص لاننا اذا عملنا
//return Text(_text,style:_textStyle);
//فانه سوف يعطينا غلط وذلك لان الكلاس لايرجع قيم لان هذا هو وضيفة الدالة
// هي التي ترجع وليس الكلاس يعني انه ناقصنا دالة ترجع لنا هذا السطر
// وبما ان الارجاع في هذا السطر عبارة عن ويدجت
//اذا ماهي الدالة التي تقوم ببناء وارجاع ويدجت
// من اول مادرسنا فلاتر نلاحظ انها الدالة بيلد هي التي تقوم بهذا العمل
// بناء وارجاع ويدجت اذا نحتاج الى الدالة بيلد في هذا الكلاس
// لذلك يجب ان نجعل هذا الكلاس يقوم بعمل اكستند اي الوراثة
// من الكلاس استيت لس ويدجت وبالتالي يجب ان نعمل
// اوفر رايد للدالة بيلد وهذا الذي نبغاه ومن ثم نجعلها ترجع هذا السطر فقط
//return Text(_text, style: _textStyle);
//الان هنا نقلنا المتغير اس من ملف البرنامج رقم 21
//شرحنا كل شي هناك


import 'package:flutter/material.dart';

TextStyle s = const TextStyle(color: Colors.red, fontSize: 30);
//سوف نعمل متغير جديد ونغير فيه اللون
TextStyle s2 = const TextStyle(color: Colors.black, fontSize: 30);


class MyText extends StatelessWidget {
  String _text;
  TextStyle _textStyle;
  MyText(this._text, this._textStyle);

  @override
  Widget build(BuildContext context) {
    return Text(_text, style: _textStyle);
  }
}
