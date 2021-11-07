//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Bottom Navigation Bar
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main

import 'package:flutter/material.dart';

//في هذا الملف سوف نستكمل شرح بقية الخصائص
//الان سوف نضيف الخاصية تايب type:
// type: BottomNavigationBarType.shifting,
//خاصية الشيفتينق تلغي لون الخلفية backgroungColor:
//لكن فائدتها انها تعطينا انيميشن عند الانتقال بين العنصرين
//الحل لارجاع لون الخلفية اننا كل عنصر نعطيه لون خلفية
//ايضا الشفتينق يلغى التايتل للعنصر الذي لم نضغطه ويظهره فقط للعنصر الذي ضغطناه
//لذلك يفضل استخدام هذا الاسلوب الشيفتينق اذا اردنا فقط استخدام ايقونات بدون تايتل
//الان اريد ان اجعل الاب بار للصفحة الرئيسية كلها اريده ان يصبح تابع لاي صفحة
// نضغط على ايقونتها يعني مثلا يتحول الاسم واللون حق الاب بار الرئيسي
// عند الضغط على احد الايقونات يتحول الى نفس محتويات اب بار تلك الصفحة
//اول حاجة سوف نعدل اللستة pages
//ونعملها لست اوف ماب المفتاح نوعه استرينق والقيمة نوعها اوبجكت غير محدد
//لما نعمل النوع اوبجكت يعني ان هذا النوع عام لا اعرفه و قد يكون اي نوع
//final List<Map<String,Object>> pages = [
//الان سوف نعيد بناء كل عنصر بداخل الماب ونجعل المفتاح استرينق والقيمة هي
//صفحة الاسكافولد بكل محتوياتها اي ان النوع اوبجكت صار عبارة عن ويدجت
//اي ان الماب الواحدة مكونة من عنصرين العنصر الاول المفتاح استرينق والقيمة
//الويدجت اسكافولد والعنصر الثاني المفتاح استرينق والقيمة استرينق
//هذا يعني ان كل عنصر بداخل اللست عبارة عن ماب كامل
//وكل ماب مكون من عنصرين وكل عنصر مكون من مفتاح وقيمة
//الان في البودي سوف يعطينا خطاء لانه صار يستقبل قيمتين مفتاح وقيمة
// والمفروض انه يستقبل قيمة لذلك نحدد له المفتاح فقط
// body: _pages[_selectedPageIndex]['page'],
//!الان طيب لماذا عقدنا الموضوع مافائدة هذا الفائدة فقط حتى نستفيد
//! من التايتل حق كل صفحة ونجعله يظهر في تايتل الاب بار حق الصفحة الرئيسية
//لذلك لكي نعرض التايتل حق كل صفحة بداخل التايتل حق اب بار الصفحة الرئيسية
//نكتب هذا في تايتل اب بار الصفحة الرئيسية
// title: Text(_pages[_selectedPageIndex]['title']as String),
//لان الويدجت تكست يقبل بداخله استرينق ونحنا مررنا له قيمة التايتل
// وهي عبارة عن ويدجت اذا لابد من تحويلها الى استرينق as String
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //!هنا كان النوع بدل ويدجت مكتوب اوبجكت لكن بسبب النل سيفتي يعطينا غلط
  //! تحت في البودي وكان قيمة التايتل استرينق عادي لان النوع اوبجكت يشمل كل شي
  //!لذلك غيرت النوع الى ويدجت والمفتاح تايتل اعطيته ويدجت تكست
  //final List<Map<String, Widget>> _pages = [

  final List<Map<String, Widget>> _pages = [
    {
      'page': const Scaffold(
        body: Center(child: Text('Text 1')),
      ),
      'title': Text('part 1')
      //'title': 'part 1'
    },
    {
      'page': const Scaffold(
        body: Center(child: Text('Text 2')),
      ),
      'title': Text('part 2')
      //'title': 'part 2'
    }
  ];

  int _selectedPageIndex = 0;
  void x1(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.orange,
          title: Text(_pages[_selectedPageIndex]['title'] as String),
        ),
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors.pinkAccent,
          selectedItemColor: Colors.black, //لون العنصر الذي ضغطنا عليه
          unselectedItemColor: Colors.white, //لون العنصر الذي لم نضغطه
          currentIndex: _selectedPageIndex, //يمثل الاندكس الذي ضغطنا عليه حاليا
          selectedFontSize: 20, //حجم خط العنصر الذي ضغطنا عليه
          unselectedFontSize: 15, //حجم خط العنصر الذي لم نضغط عليه
          //الحالة الافتراضية فان حجم الخط متساوي
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.pinkAccent,
              icon: Icon(Icons.category),
              title: Text('Part 1'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.pinkAccent,
              icon: Icon(Icons.star),
              title: Text('Part 2'),
            )
          ],
          onTap: x1,
        ),
      ),
    );
  }
}
