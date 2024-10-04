import 'package:dialymath/cubits/cubit/group_cubit_cubit.dart';
import 'package:dialymath/models/group_model.dart';
import 'package:dialymath/widgets/edit_groupform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../screen/groups_screen/cubit/group_cubit.dart';

class Editgroupsheet extends StatefulWidget {
  const Editgroupsheet({super.key,required this.day, required this.group});
  final int day;
  final GroupModel group;
  @override
  State<Editgroupsheet> createState() => _EditgroupsheetState();
}
class _EditgroupsheetState extends State<Editgroupsheet> {
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
            // BlocProvider.of<GroupCubit>(context).fetchAllgroups(widget.day);
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
              (child: Editgroupform(day: widget.day, group: widget.group)),
            )
            );
        },
      ),
    );
  }
}





