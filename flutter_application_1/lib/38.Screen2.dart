//!هذا درس من دورة فلاتر ل حسن فليح بعنوان More about push Replacement Named
//!هذا الدرس تابع للملف رقم 38
//!هنا عرفنا كلاس الصفحة Screen2

import 'package:flutter/material.dart';
import '38.Drawer.dart';
import '38.Screen1.dart';

class Screen2 extends StatelessWidget {
  void selectScreen(BuildContext ctx) {
    //هنا ينقلنا الى سكرين 1
    //Navigator.of(ctx).pushNamed(
    Navigator.of(ctx).pushReplacementNamed('/x1');
  }

  @override
  Widget build(BuildContext context) {
    final routArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orange,
        title: const Text(
          'Screen 2',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${routArg['id']}", style: TextStyle(fontSize: 35)),
            Text("routArg['title']", style: TextStyle(fontSize: 35)),
            InkWell(
              child: Text('Go to screen 1', style: TextStyle(fontSize: 35)),
              onTap: () {
                return selectScreen(context);
                //الدالة سلكت اسكرين تحتاج ارقيومنت من نوع بيلدر كونتكست
                // لذلك نمرر لها كونتكست الدالة بيلد
              },
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
