import 'package:dialymath/widgets/coustm_navbar.dart';
import 'package:dialymath/widgets/friday_view.dart';
import 'package:dialymath/widgets/monday_view.dart';
import 'package:dialymath/widgets/saturday_view.dart';
import 'package:dialymath/widgets/sunday_view.dart';
import 'package:dialymath/widgets/thursday_view.dart';
import 'package:dialymath/widgets/tuesday_view.dart';
import 'package:dialymath/widgets/wednesday_view.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const Dialymath());
}
class Dialymath extends StatelessWidget {
  const Dialymath({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Navbar(),
      debugShowCheckedModeBanner: false,
      routes: {
        'Saturday':(context) => const Saturday(),
        'Sunday':(context) => const Sunday(),
        'Monday':(context) => const Monday(),
        'Tuesday':(context) => const Tuesday(),
        'Wednesday':(context) => const Wednesday(),
        'Thursday':(context) => const Thursday(),
        'Friday':(context) => const Friday(),
      },
      initialRoute: 'Navbar',

    );
  }
}
