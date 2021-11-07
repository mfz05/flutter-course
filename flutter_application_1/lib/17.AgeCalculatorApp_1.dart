//!برنامج لحساب العمر
//هنا سوف نكتب برنامج لحساب العمر بلغة دارت
//مثل البرامج التي كتبناها سابقا عند تعلم لغة دارت
//هنا في هذا الملف سوف نكتب الكلاس
//ومن ثم سوف نستدعيه في ملف اخر فيه تطبيق لفلاتر لكي ننفذه
//لازم ننشى دالة استاتيك داخل الكلاس
//علشان في تطبيق فلاتر نقدر نستدعيها باسم الكلاس
//

import 'dart:io';
//!هذا البرنامج قبل ان نعدله لكي نستقبل الادخال من حقل في فلاتر
/*
class AgeCalculator {
  static info() {
    print('Enter your birth year :');
   
   هذي طريقة جديدة لكي يحول ناتج دالة الادخال من استرينق الى انتجر مباشرة
    int birthYear = stdin.readLineSync() as int;

    var age = DateTime.now().year - birthYear;
    print('your Age is $age Years Old');
  }
}
*/

//!الان هنا البرنامج عدلناه لكي نستقبل الادخال في فلاتر ونستقبله هنا في الدالة
//الادخال في فلاتر سوف يكون استرينق اما ان نحوله في فلاتر الى انتجر وندخله هنا
//كا انتجر مباشرة للدالة
//او ان نستقبله هنا ك استرينق ونحوله الى انتجر كما في التالي

/*

class AgeCalculator {
  static info(p) {
     لانحدد نوع المتغير بي لاننا سوف نستقبل استرينق من فلاتر
    print('Enter your birth year :');
    هنا نحول بي مباشرة الى انتجر
    int birthYear = p as int;

    var age = DateTime.now().year - birthYear;
    print('your Age is $age Years Old');
  }
}

*/

//!المشكلة انه في فلاتر ممكن ان يعطينا خطا اذا فعلنا هذا int birthYear = p as int;
//ممكن مايقبلها
//!لذلك سوف نحول القيمة في فلاتر الى انتجر ثم نمررها للدالة انفو هنا

/*

class AgeCalculator {
 static int age=0;
  static info(int p) {
     
    print('Enter your birth year :');
    int birthYear = p;

   age = DateTime.now().year - birthYear;
    print('your Age is $age Years Old');
  }
}

*/
//!هذا حل مختصر وهو ان نلغي الدالة انفو كلها ونكتب محتوياتها
//!في الكونستركتر مباشرة لكي نستدعي الكونستركتر في فلاتر مباشرة

class AgeCalculator {
  static int? age;
  AgeCalculator(int p) {
    print('Enter your birth year :');
    int birthYear = p;

    age = DateTime.now().year - birthYear;
    print('your Age is $age Years Old');
  }
}
