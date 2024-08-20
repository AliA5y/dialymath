import 'package:dialymath/widgets/coustm_card.dart';
import 'package:flutter/material.dart';

class Listofgroups extends StatelessWidget {
  const Listofgroups({super.key});

  @override
  Widget build(BuildContext context){
   return Padding(
     padding: const EdgeInsets.all(32),
     child: ListView(
      physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
      children: const [
      CoustmCard(bordercolor: Color.fromARGB(255, 37, 3, 160),dayname: 'Saturday',rootsname:'Saturday' ,),
      SizedBox(height: 30,),
      CoustmCard(bordercolor: Color.fromARGB(255, 37, 3, 160),dayname: 'Sunday',rootsname: 'Sunday',),
      SizedBox(height: 30,),
      CoustmCard(bordercolor: Color.fromARGB(255, 37, 3, 160),dayname: 'Monday',rootsname:'Monday' ,),
      SizedBox(height: 30,),
      CoustmCard(bordercolor: Color.fromARGB(255, 37, 3, 160),dayname: 'Tuesday',rootsname: 'Tuesday',),
      SizedBox(height: 30,),
      CoustmCard(bordercolor: Color.fromARGB(255, 37, 3, 160),dayname: 'Wednesday',rootsname:'Wednesday' ,),
      SizedBox(height: 30,),
      CoustmCard(bordercolor: Color.fromARGB(255, 37, 3, 160),dayname: 'Thursday',rootsname:'Thursday' ,),
      SizedBox(height: 30,),
      CoustmCard(bordercolor: Color.fromARGB(255, 37, 3, 160),dayname: 'Friday',rootsname:'Friday' ,),
      ],
     ),
   );
  }
}