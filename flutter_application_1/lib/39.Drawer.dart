//هذا الملف تابع للدرس في الملف رقم 39
//
//

import 'package:flutter/material.dart';
import '39.Screen1.dart';
import '39.Screen2.dart';
import '39.Pop.dart';

class MyDrawer extends StatelessWidget {
  //هذي الدالة اذا احتجت ان اصل اليها من ملف اخر فاني اعملها استاتيك
  // حتى استطيع ان ستدعيها باسم الكلاس نقطة اسم الدالة

  String? str;

  void selectScreen(BuildContext ctx, int n) {
    if (n == 1) {
      Navigator.of(ctx).pushNamed('/x1', arguments: {
        //هنا نمرر البيانات بشكل مباشر لانه لايوجد عندي سكرين اخرى لذلك لاداعي للتحقق
        'id': 10,
        'title': 'info 1',
        //}).then((value) => print(value));
      }).then((value) => str = value as String);
    } else {
      Navigator.of(ctx).pushReplacementNamed(n == 0 ? '/' : '/x2', arguments: {
        'id': n == 1 ? 10 : 20,
        'title': n == 1 ? 'info 1' : 'info 2',
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title:
                const Text('Go to main screen', style: TextStyle(fontSize: 25)),
            subtitle: Text('Go to main screen'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              return selectScreen(context, 0);
            },
          ),
          ListTile(
            title: const Text('Go to screen 1', style: TextStyle(fontSize: 30)),
            subtitle: Text('Go to screen 1111'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              return selectScreen(context, 1);
            },
          ),
          ListTile(
            title: const Text('Go to screen 2', style: TextStyle(fontSize: 30)),
            subtitle: Text('Go to screen 2222'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              return selectScreen(context, 2);
            },
          ),
        ],
      ),
    );
  }
}
