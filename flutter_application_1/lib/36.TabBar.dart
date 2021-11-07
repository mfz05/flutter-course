//!هذا درس من دورة فلاتر ل حسن فليح بعنوان Tab Bar
//!هذا الملف هو نفسه ممكن ان نعتبره ملف الماين اذا اردنا تنفيذ هذا التطبيق
//!نعدل فقط اسم الملف ونسميه main
//!هذا الملف سوف يكون مرتبط بالسكرين 1 والسكرين 2 من الدرس في الملفات رقم 34
//!لانه سوف نستدعيهن من التطبيق ولن نعدل اي شي عليهن فلاداعي لكتابتهن مرة اخرى

import 'package:flutter/material.dart';
import '34.PassingDataBetweenScreens_1.dart';
import '34.PassingDataBetweenScreens_2.dart';

//!التاب بار هو شريط ممكن نضعه اعلى الصفحة تحت الاب بار او اسفل الصفحة
//وهو يقسم الصفحة كلها الى قسمين او اكثر بحيث ان كل صفحة تكون مستقلة بذاتها
//او اننا نستدعي محتوى صفحة اخرى ونعرضه في هذي الصفحة المصغرة
//الان لعمل التاب بار في اعلى الصفحة تحت الاب بار فاننا سوف نعمل احاطة للاسكافولد
//بويدجت وبما انه الاحاطة سوف تكون فوق الاسكافولد والاسكافولد نعمل له ارجاع في الدالة بيلد
//اذا الويدجت الذي احطناه فوق الاسكافولد هو الذي سوف نعمل له ارجاع
//هذا الويدجت الذي يعمل لنا التاب بار هو return DefaultTabController(
//الباراميتر لينقث يحدد لنا عدد الاقسام التي سوف نقسم الصفحة اليها في التاب بار
//هنا عملنا قسمين فقط length: 2,
//الان بداخل الاب بار نستدعي الباراميتر بوتوم ونعرف فيه التاب بار
//بوتوم يعني ان التاب بار موجود في اسفل الاب بار
//بداخل التاب بار نعرف تابس وهو يستقبل لستة اوف ويدجت
//بداخل هذي اللستة اعرف تاب على عدد الاقسام التي حددتها في الاعلى وبما اننا
//حددنا قسمين اذا سوف نعمل عدد 2 تاب
//في كل تاب ممكن ان نضع ايقونة ونص معين
//الان تبقى لدينا جزء ناقص اخر وهو تاب بار فيو ونضعه في البودي body: TabBarView(),
//هذا التاب بار فيو يحتوي بداخله على لستة تشيلدرن وبداخلها نحدد
// اذا انتقلت الى الخيار الاول ماهي النافذة التي سوف يعرضها
//واذا انتقلت للخيار الثاني اي نافذة سوف يعرض
//يجب ان يكون عدد الخيارات في التاب بار فيو نفس عددها في التاب بار
//ممكن ان نضيف في التاب بار فيو اسكرين 1 و اسكرين 2
//لكننا اضفناها في الدراور في الدرس السابق ولايحبذ اضافتها
//لانها ممكن تعمل لنا مشاكل وتحتاج الى تعديل الاكواد في ملف كل اسكرين
//لذلك ممكن اننا نعرض صفحة بشكل مباشر اي اننا سوف نعرض اسكافولد مختلف في كل تاب
//اي اننا سوف نعرض اسكافولد بشكل كامل يعني بحقه البودي والاب بار وغيره
//ممكن ان نضع اب بار لواحد والاخر لانضع له اب بار وهكذا
//وممكن ان نرتب الكود اذا كان كثير بحيث اننا نكتب كل اب بار كاملا في ملف مستقل
// ومن ثم نستدعيه هنا بداخل لستة التشيلدرن حق التاب بار فيو
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.orange,
          title: const Text(
            'Main Screen',
            style: TextStyle(color: Colors.black),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: ('Part 1'),
              ),
              Tab(
                icon: Icon(Icons.star),
                text: ('Part 2'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Screen1(),
            // Screen2()
            Scaffold(
              appBar: AppBar(title: Text('Part 1')),
              body: const Center(child: Text('Text 1')),
            ),
            Scaffold(
              body: Center(child: Text('Text 2')),
            )
          ],
        ),
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
      ),
    );
  }
}
