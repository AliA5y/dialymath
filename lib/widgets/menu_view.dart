import 'package:flutter/material.dart';
class Menu extends StatelessWidget {
  const Menu({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       floatingActionButton: FloatingActionButton(
            onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return const Column();
              });
            },
            child: const Icon(Icons.add,color: Colors.purple,),
            ),
            body: const Column() ,

     
     
      
    );
  }
}

