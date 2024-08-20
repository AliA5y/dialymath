import 'package:dialymath/widgets/coustm_bt.dart';
import 'package:dialymath/widgets/coustm_text.dart';
import 'package:flutter/material.dart';

class CoustmCard extends StatelessWidget {
const CoustmCard({super.key, required this.bordercolor, required this.dayname, required this.rootsname, });
final Color bordercolor;
final String dayname;
final String rootsname;
  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
         border: BorderDirectional(
         bottom:BorderSide(width: 2,color:bordercolor),
          end: BorderSide(width: 0.5,color: bordercolor) ),
        borderRadius: BorderRadius.circular(16),
        ),
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, rootsname);
          },
          child: Column(
            children: [
              ListTile(
                title:CoustmText(
                  text: dayname,
                  textcolor: Colors.black,
                  textsize: 25,
                ),
                subtitle:const Column(
                  children: [
                  ],
                ),
                trailing: const CoustmBticon(icon: Icons.calendar_month_outlined,height: 50,width: 50,)
              )
            ],
          ),
        ),
      );
  }


}