import 'package:dialymath/widgets/listofgroups.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Row(children: [Text('week days',style: TextStyle(fontSize: 30),)],),
            Expanded(child:Listofgroups()),
          ],
        ),
      )
    );
      

           
    
  }
}