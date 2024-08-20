import 'package:dialymath/widgets/coustm_bt.dart';
import 'package:dialymath/widgets/coustm_sheet.dart';
import 'package:dialymath/widgets/coustm_text.dart';
import 'package:flutter/material.dart';

class Tuesday extends StatelessWidget {
  const Tuesday({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(floatingActionButton:CoustmBt(bttext:'create group' ,
               ontab:(){showModalBottomSheet(context: context, builder: (context){
                return const Modelsheet();
              });}
       
        ),
            body:  Padding(
              padding:const EdgeInsets.only(
        top: 60,
        right: 14,
        left: 14

              ),
              child: Column(
                children: [
                  Row(
                      children: [
                          IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon(Icons.exit_to_app)),
                         const CoustmText(
                            text: 'Tuesday',
                            textcolor: Colors.black,
                            textsize: 25,
                          ),
                        ],
                  ),

                ],
              ),
            ) ,
    );
  }
}