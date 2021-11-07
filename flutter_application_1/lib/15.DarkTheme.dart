//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Dark Theme
//!الان في جميع الدروس القادمة سوف نجعل ملف خاص للدالة main
//!نستدعي بداخلها الدالة رن اب ثم سوف نمرر بداخل هذي الدالة اي درس نشرحه

import 'package:flutter/material.dart';

//هذا الدرس استكمال للدرسين السابقين
//الان نريد تغيير لون الخلفية ولون النص ولكي لانكتب الكود اكثر من مرة
//سوف نعرف متغيرات خارج الدالة بيلد ونعطيها قيم عبارة عن الوان
//الان لكي نغير لون اسماء الحقول نذهب الى labelStyle: TextStyle(fontSize: 30),
//ونضيف خاصية كولور للتكست استايل ونضع لها قيمة مثلا حرف ار للون الاحمر
//ايضا الهنت استايل سوف نعطيه لون معين
//الان نخرج خارج الديكوريشن ونضيف خاصية استايل ثم نضيف لها تكست استايل
//ونعطيه لون هذا اللون سوف يكون خلفية النص الذي نكتبه في الحقل
//الان نريد ان تكون خلفية التطبيق كله باللون الاسود سوف نذهب للكونتينر الرئيسي
//ونضيف له الخاصية كولور ونعطيها قيمة حرف بي
//الان نلاحظ ان كل المحتويات اختفت ماعدا الحقل الاول اللي اعطيناه الوان
//لذلك سوف نعمل لون لجميع اسماء الحقول الاخرى والهنت والاستايل والايقونات
//بعد الانتهاء نعمل هوت ريلود نلاحظ انه لايوجد حدود للحقول اي ان اطار الحقل
//غير ظاهر لذلك نضيف خاصية بوردر من ضمن الديكوريشن
//ثم نمرر لها اوبجكت اوتلاين انبوت بوردر
//نذهب لمركز الاكواد لكي نعرف ماهي باراميترات كونستركتر هذا الاوبجكت
//خاصية البوردر سايد تحدد لنا سمك خط الاطار واللون
//borderSide: BorderSide(width: 2,color: g)
//خاصية البوردر ريديس تحدد لنا مدى تقوس الاطار من الاطراف
//borderRadius: BorderRadius.circular(60.0),
//نلاحظ انه حتى مع كل هذي الاضافات فان الاطار لايظهر الا بعدما نضغط على الحقل
//لذلك نستخدم الخاصية enabledBorder:
//بدلا عن البوردر ونضيف لها كل الخصائص التي عملناها وسوف يبقى الاطار ظاهر
//ممكن اننا نضيف لون لخلفية الحقل عن طريق الخاصية fillColor:br,
//وهي من خصائص الديكوريشن ولكن لتفعيل هذي الخاصية يجب ان نضيف الباراميتر فيلد
//ونوع هذا الباراميتر بوليان واذا مررنا له ترو فانه يفعل لون خلفية الحقل
// filled:true,
//نلاحظ ان اللون الاسود للكونتينر الاساسي ليس في كامل الصفحة
//وانما جزء في الاسفل لونه ابيض لذلك نضيف الخاصية هايت للكونتينر
//لو ذهبنا لمركز الاكواد نلاحظ ان نوع الهايت هو دبل ولكنني اريده ان يملا الشاشة
// لذلك نعطيه قيمة انفنيتي عن طريق الدبل اي طول لانهائي
// عندها نجد ان اللون الاسود قد ملئ الصفحة كلها
//الان ممكن اننا نعمل فكرة بحيث اننا ننشى زر فلوتن اكشن بوتن خارج البودي
//بحيث انه عند الضغط على هذا الزر يغير لون الثيم
// اي جميع الالون الخلفية والوان النصوص وغيرها
//الان سوف اعطي الزر لون ابيض واريد انه عند الضغط عليه يغير لون الخلفية الى الابيض
//وكذلك يغير الوان النصوص الى لون مناسب للابيض وايضا يتغير لون الايقونة الاى الاسود
//وعند الضغط على الايقونة مرة اخرى يحدث العكس
//الان بما انه عملنا الاوان عبارة عن متغيرات الان سوف يسهل علي كل شي
// وهو انني سوف اغير قيم هذي المتغيرات بداخل دالة الاستيت عند الضغط على الزر
// بحيث انه ياخذ مثلا المتغير بي ياخذ لون ابيض بدل الاسود وهكذا
//نلاحظ انه عندما نضغط مرة اخرى على الزر لايحدث شي ونحنا نبغاه يرجع الى الثيم السابق
//لذلك لابد من عمل عبارة شرط بحيث تتحقق هل المتغير هذا مثلا بي لونه اسود
// اذا نعم غيره الى الابيض وهكذا في كل ضغطة زر سوف يتحقق من لون المتغير
//ويعطيه قيمة مختلفة في كل مرة نضغط الزر
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
                          labelText: 'Text feild',
                          labelStyle: TextStyle(fontSize: 30, color: r),
                          hintText: 'Enter text',
                          hintStyle: TextStyle(fontSize: 20, color: w),
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
                            prefixIcon: Icon(Icons.phone, color: Colors.blue)),
                        style: TextStyle(color: w),
                        keyboardType:
                            TextInputType.phone, //كيبورد ارقام التلفون
                      )),
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
