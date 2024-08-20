import 'package:hive/hive.dart';
part 'group_model.g.dart';

@HiveType(typeId:0)
class GroupModel extends HiveObject {
  @HiveField(0)
  final String groupname;
  @HiveField(1)
  final String groupgrade;
  @HiveField(2)
  final String grouptime;
  GroupModel( {
    required this.groupname, required this.groupgrade, required this.grouptime,
  });
}







