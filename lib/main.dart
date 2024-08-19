import 'package:dialymath/widgets/coustm_navbar.dart';
import 'package:dialymath/widgets/home_view.dart';
import 'package:dialymath/widgets/menu_view.dart';
import 'package:dialymath/widgets/setting_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
      

      // routes:{
      //    'Homeview'   :(context) => const Homeview(),
      //    'Menu'   :(context) => const Menu(),
      //    'Settingview':(context) => const Setting(),
      //    'Navbar'     :(context) => const  Navbar(),
      //   // 'Saturday'   :(context) => const Saturday(),
      //   // 'Friday'     :(context) => const Friday(),
      //   // 'Sunday'     :(context) => const Sunday(),
      //   // 'Monday'     :(context) => const Monday(),
      //   // 'Tuesday'    :(context) => const Tuesday(),
      //   // 'Wednesday'  :(context) => const Wednesday(),
      //   // 'Thursday'   :(context) => const Thursday(),
      //   },
      //   initialRoute:'Navbar',
    );
  }
}
