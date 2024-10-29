part of 'student_cubit.dart';

@immutable
sealed class StudentState {}

final class StudentInitial extends StudentState {}

class AddStudentLoading extends StudentState {}

class AddStudentSuccess extends StudentState {}

class AddStudentFailure extends StudentState {
  final String errMessage;

  AddStudentFailure(this.errMessage);
}
