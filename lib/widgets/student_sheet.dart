import 'package:dialymath/cubits/cubit/group_cubit_cubit.dart';
import 'package:dialymath/widgets/student_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../screen/groups_screen/cubit/group_cubit.dart';

class StudentSheet extends StatefulWidget {
  const StudentSheet({super.key,required this.day,});
  final int day;
 
  @override
  State<StudentSheet> createState() => _StudentSheetState();
}
class _StudentSheetState extends State<StudentSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>GroupCubitCubit(),
      child: BlocConsumer<GroupCubitCubit, GroupCubitState>(
        listener: (context, state) {
          if (state is AddgroupFailure){
          print('faield${state.errMessage}');
          }
          if (state is AddgroupSuccess){
            //BlocProvider.of<GroupCubit>(context).fetchAllgroups(widget.day);
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer
          (absorbing: state is AddgroupLoading ?true:false ,
            child:Padding(
              padding:EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom
              ),
              child: SingleChildScrollView
              (child: StudentForm(day: widget.day,)),
            )
            );
        },
      ),
    );
  }
}





