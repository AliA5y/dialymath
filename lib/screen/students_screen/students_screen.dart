import 'package:dialymath/screen/groups_screen/cubit/group_cubit.dart';
import 'package:dialymath/models/group_model.dart';
import 'package:dialymath/models/student_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({super.key,required this.day,this.group, this.student});
  final int day;
  final GroupModel? group;
  final StudentModel? student;

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupCubit, GroupState>(
      builder: (context, state) {
        // List<StudentModel>groups=BlocProvider.of<GroupCubit>(context).students!;
        // return Padding(
        //   padding: const EdgeInsets.all(16),
        //   child: Column(
        //     children: [
        //       const SizedBox(height: 40,),
        //       CloseButton(onPressed:(){
        //         Navigator.pop(context);
        //      },),
        //     CoustmText(
        //     text:widget.group!.groupname??"",
        //     textcolor: Colors.black,textsize: 20,),
        //       Expanded(
        //         child: Padding(
        //           padding: const EdgeInsets.symmetric(vertical: 16),
        //           child: ListView.builder(
        //             physics:const BouncingScrollPhysics(),
        //               itemCount: groups.length,
        //               padding: EdgeInsets.zero,
        //               itemBuilder: (context, index) {
        //                 return Studentcard(
        //                  day: widget.day,
        //                  group: groups[index],
        //                  colorbordertow: const Color.fromARGB(255, 57, 13, 179),
        //                  );
        //               }),
        //         ),
        //       ),
        //     ],
        //   ),
        // );
        return const Column(
          

        );
      },
    );
  }
}


