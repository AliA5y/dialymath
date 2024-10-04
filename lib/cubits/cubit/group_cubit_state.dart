part of 'group_cubit_cubit.dart';

@immutable
sealed class GroupCubitState {}

final class GroupCubitInitial extends GroupCubitState {}
class AddgroupLoading extends GroupCubitState {}

class AddgroupSuccess extends GroupCubitState {}

class AddgroupFailure extends GroupCubitState {
  final String errMessage;

  AddgroupFailure(this.errMessage);
}
