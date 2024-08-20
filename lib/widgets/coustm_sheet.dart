import 'package:dialymath/widgets/coustm_bt.dart';
import 'package:dialymath/widgets/coustm_textfield.dart';
import 'package:flutter/material.dart';

class Modelsheet extends StatelessWidget {
  const Modelsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
              const SizedBox(height:15,),
              CloseButton( onPressed: () {Navigator.pop(context);},),
               const CoustmTextfield(hinttext:'groupname',),
               const SizedBox(height:19,),
               const CoustmTextfield(hinttext:'grade',),
               const SizedBox(height:19,),
               const CoustmTextfield(hinttext:'Start time',),
               const SizedBox(height:19,),
               const CoustmBt(bttext: 'create group'),
               const SizedBox(height:10,),
        ],
      ),
    );
  }
}