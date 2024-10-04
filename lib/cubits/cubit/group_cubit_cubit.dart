import 'package:bloc/bloc.dart';
import 'package:dialymath/models/group_model.dart';
import 'package:dialymath/models/student_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

part 'group_cubit_state.dart';

class GroupCubitCubit extends Cubit<GroupCubitState> {
  GroupCubitCubit() : super(GroupCubitInitial());
  addgroup(GroupModel group) async {
   emit(AddgroupLoading());
    try {
      var notesBox = Hive.box<GroupModel>('groupbox');
      group.id=notesBox.length+1;
      await notesBox.add(group);
      emit(AddgroupSuccess());
    } catch (e) {
      emit(AddgroupFailure(e.toString()));
    }
  }

  addstudent(StudentModel student) async {
   emit(AddgroupLoading());
    try {
      var notesBox = Hive.box<StudentModel>('studentbox');
      await notesBox.add(student);
      emit(AddgroupSuccess());
    } catch (e) {
      emit(AddgroupFailure(e.toString()));
    }
  }
}

