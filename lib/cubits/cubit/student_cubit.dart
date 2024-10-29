import 'package:bloc/bloc.dart';
import 'package:dialymath/models/group_model.dart';
import 'package:dialymath/models/student_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

part 'student_state.dart';

class StudentCubit extends Cubit<StudentState> {
  StudentCubit() : super(StudentInitial());
  addgroup(GroupModel group) async {
    emit(AddStudentLoading());
    try {
      var notesBox = Hive.box<GroupModel>('groupbox');
      group.id = notesBox.length + 1;
      await notesBox.add(group);
      emit(AddStudentSuccess());
    } catch (e) {
      emit(AddStudentFailure(e.toString()));
    }
  }

  addstudent(StudentModel student) async {
    emit(AddStudentLoading());
    try {
      var studentBox = Hive.box<StudentModel>('studentbox');
      await studentBox.add(student);
      emit(AddStudentSuccess());
    } catch (e) {
      emit(AddStudentFailure(e.toString()));
    }
  }
}
