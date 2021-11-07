//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Drawer
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main
//!هذا الملف سوف يكون مرتبط بالسكرين 1 والسكرين 2 من الدرس في الملفات رقم 34
//!لانه سوف نستدعيهن من التطبيق ولن نعدل اي شي عليهن فلاداعي لكتابتهن مرة اخرى

import 'package:flutter/material.dart';
import '34.PassingDataBetweenScreens_1.dart';
import '34.PassingDataBetweenScreens_2.dart';

//!في هذا الدرس سوف نستخدم نفس التطبيق في الدرس السابق وهو استمرار للدرس السابق
//بحيث اننا هنا سوف نضيف للتطبيق ثلاث خطوط في اعلى الصفحة الرئيسية للتطبيق
// بحيث انه عند النقر عليها او المرور عليها تفتح لنا قائمة
//وفي هذي القائمة سوف ننقل ازرار الاينك ول اليها هذي الثلاث خطوط تسمى الدراور
//الدراور هو احد خصائص السكافولد drawer: Drawer(),
//الان نريد نقل الاينك ول الاثنين اليها Go to screen 1 , Go to screen 2
//سوف ننقل العمود كله مع جميع محتوياته من الاينك ول سوف ننقله الى الدراور
//الان نحنا نحتاج الى ان يكون سكرولينق في الدراور حتى نقدر نتحرك بحريه
//اذا كثرت العناصر في الدراور ولتحقيق ذلك من الافضل في حالة الدراور
//ان نجعل بداخله ليست فيو افضل من العمود لذلك سوف نحذف العمود ونكتب بدله لست فيو
//الان بما انه غيرناه الى ليست فيو اذا يمكن ايضا ان نحذف الاينك ويل ونكتب بدله
//ليست تايل وهو ويدجت مشابة للاينك ويل ويحتوي بداخله باراميتر اون تاب مثل الزر
//ListTile()
//من ضمن الباراميترات في الليست تايل enabled : true
//اينابلد وهي افتراضيا ترو هذ الخاصية تجعل الالعنصر في الست تايل قابل للضغط عليه
//واذا لم نريده قابل للضغط نجعل قيمة هذا الباراميتر فولس
//او ممكن ان نضع شرك اذا تحقق يكون هذا العنصر قابل للضغط
//اللست تايل ليس فيها باراميتر تشايلد لذلك نمسح كلمة تشايلد ونكتب بدلها
//الباراميتر title:
//نفس الاكواد التي كانت في التشايلد نفسها تعمل على التايتل
//طيب لماذا استخدمنا هذي الطريقة بدل الاينك ول وذلك لان فيها خيارات اخرى سوف نستفيد منها
//الباراميتر تريلينق يسمح لنا باضافة شي معين نهاية عنصر اللست تايتل trailing:
//هذا الباراميتر يستقبل ويدجت اي انه يجب ان نمرر له اوبجكت كونستركتر من كلاس معين
//هنا استخدمنا هذا التريلينق لاضافة ايقونة معينة ممكن ان نبرمجها
// بحيث انه عند النقر عليها تعطينا قائمة اخرى اة تنقلنا الى مكان اخر
//
//اذا اردنا ان يكون موقع الدراور بالاتجاة الاخر نستخدم في السكافولد بدل الباراميتر دراور
//نستخدم اند دراور وجميع الاكواد نفسها فقط يغير مكان الدراور من اليسار الى اليمين
//او العكس حسب لغة التطبيق endDrawer:
//فيه باراميتر اخر تابع للاسكافولد هو drawerScrimColor:
//هذا يقبل تمرير ويدجت كولور وهو يستخدم لضبط اللون في الجزء من الشاشة بجنب الدراور
//ممكن ان نعطيه لون بشفافية معينة Colors.pinkAccent.withOpacity(0.5),
//وممكن ان نجعله بدون شفافية Colors.pinkAccent,
//
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
      //title: 'Flutter App',
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: '/',
      //home: MyHomePage(),
      routes: {
        '/': (context) => MyHomePage(),
        '/x1': (context) => Screen1(),
        '/x2': (context) => Screen2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  //!هنا اذا اردته ينقلنا الى سكرين 1 او 2

  void selectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushReplacementNamed(n == 1 ? '/x1' : '/x2', arguments: {
      // 'id': 10,
      // 'title': 'info',
      'id': n == 1 ? 10 : 20,
      'title': n == 1 ? 'info 1' : 'info 2',
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        title: const Text(
          'Main Screen',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(),
      drawerScrimColor: Colors.pinkAccent.withOpacity(0.5),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Go to screen 1', style: TextStyle(fontSize: 30)),
              subtitle: Text('Go to screen 1111'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                return selectScreen(context, 1);
              },
            ),
            ListTile(
              title: Text('Go to screen 2', style: TextStyle(fontSize: 30)),
              subtitle: Text('Go to screen 2222'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                return selectScreen(context, 2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
