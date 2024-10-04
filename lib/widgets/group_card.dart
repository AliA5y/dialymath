import 'package:dialymath/screen/groups_screen/cubit/group_cubit.dart';
import 'package:dialymath/models/group_model.dart';
import 'package:dialymath/models/student_model.dart';
import 'package:dialymath/widgets/coustm_bt.dart';
import 'package:dialymath/widgets/coustm_text.dart';
import 'package:dialymath/widgets/edit_groupsheet.dart';
import 'package:dialymath/widgets/edit_sheet.dart';
import 'package:dialymath/screen/students_screen/students_screen.dart';
import 'package:dialymath/widgets/student_sheet.dart';
import 'package:dialymath/widgets/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({super.key,required this.group, required this.colorborder,required this.day,});
  final GroupModel group;
  final Color colorborder;
  final int day;


  @override
  Widget build(BuildContext context) {
    return Slidable(
        startActionPane: ActionPane(
                          motion: const StretchMotion(),
                           children:[
                             SlidableAction(
                            backgroundColor:const Color.fromARGB(255, 65, 33, 243),
                            label: 'edit',
                            icon: Icons.edit,
                            onPressed: (context)=>
                            showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                            return Editgroupsheet(day:day,group: group,);})),
                             SlidableAction(
                            backgroundColor:const Color.fromARGB(255, 223, 28, 28),
                            label: 'delet',
                            icon: Icons.delete,
                            onPressed:(context)=>{
                            group.delete(),
                            //  BlocProvider.of<GroupCubit>(context).fetchAllgroups(day)
                            }
                            )
                           ]
                           ),
      child: Container(
        height: 150,
        width: double.infinity,
          padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
          decoration: BoxDecoration(
           border: BorderDirectional(
           bottom:  BorderSide(width: 2,color: colorborder),
            end: BorderSide(width: 0.5,color: colorborder) ),
          borderRadius: BorderRadius.circular(16),
          ),
          child: GestureDetector(
            onTap: (){
                  showModalBottomSheet(
                  isScrollControlled:true,
                  context: context,
                  builder: (context) {
                  return Test(dayname: "", day: day);
                  });
            },
            child: Column(
              children: [
                ListTile(
                  title:CoustmText(
                    text: group.groupname??'',
                    textcolor: Colors.black,
                    textsize: 25,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CoustmText(text: 'grade ${group.groupgrade}',textcolor: Colors.black,textsize:16,),
                      CoustmText(text: 'start at ${group.grouptime}',textcolor: Colors.black,textsize:16,),
                    ],
                  ),
                  trailing:Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: CoustmBticon(
                    icon: Icons.group,height: 40,width: 50,
                    ontab:(){
                                   showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                    return StudentSheet(day:day,);
                                    });
                    
                      },
                    ),
                  )
                    
                )
              ],
            ),
          ),
        ),
    );
  }
}
 class Studentcard extends StatelessWidget {
  const Studentcard({super.key,required this.colorbordertow, required this.group,required this.day});
    final Color colorbordertow;
    final StudentModel group;
    final int day;
    
  @override
  Widget build(BuildContext context) {
    final Uri whatsapp=Uri.parse('https://wa.me/+02${group.parentrhone}');
    return Slidable(
         startActionPane: ActionPane(
                          motion: const StretchMotion(),
                           children:[
                             SlidableAction(
                            backgroundColor:const Color.fromARGB(255, 65, 33, 243),
                            label: 'edit',
                            icon: Icons.edit,
                            onPressed: (context)=>
                            showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                            return Editsheet(day:day,student:group,);})),
                             SlidableAction(
                            backgroundColor:const Color.fromARGB(255, 223, 28, 28),
                            label: 'delet',
                            icon: Icons.delete,
                            onPressed:(context)=>{
                            group.delete(),
                            //  BlocProvider.of<GroupCubit>(context).fetchAllgroups(day)
                            }
                        
                             
                            )
                           ]
                           ),
      child: Container(
          padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
          decoration: BoxDecoration(
           border: BorderDirectional(
           bottom:  BorderSide(width: 2,color: colorbordertow),
            end: BorderSide(width: 0.5,color: colorbordertow) ),
          borderRadius: BorderRadius.circular(16),
          ),
          child: GestureDetector(
            onTap: (){
               showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                              return Editsheet(day:day,student:group,);});
              
            },
            child: Column(
              children: [
                ListTile(
                  title:CoustmText(
                    text: group.studentname??"",
                    textcolor: Colors.black,
                    textsize: 25,
                  ),
                  subtitle: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: () async {
                            final Uri uri = Uri(
                            scheme: 'tel',
                            path: group.parentrhone,
                          );
                          await launchUrl(uri);
                          }, icon: const Icon(Icons.call),color:const Color.fromARGB(255, 17, 34, 184) ,),
                          Text(group.parentrhone??''),
                        ],
                      ),
                      IconButton(onPressed:(){launchUrl(whatsapp);},icon:const FaIcon(FontAwesomeIcons.whatsapp),color:const Color.fromARGB(255, 21, 124, 44),)
                    ],
                  ),
                  trailing: CoustmBticon(
                    icon: Icons.delete,height: 40,width: 50,
                    ontab:(){
                      group.delete();
                      // BlocProvider.of<GroupCubit>(context).fetchAllgroups(day);
                      },
                    )
                )
              ],
            ),
          ),
        ),
    );
  }
}


              //  final Uri uri = Uri(
              //         scheme: 'tel',
              //         path: group.studentnumper,
              //       );
              //       await launchUrl(uri);