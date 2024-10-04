import 'package:hive/hive.dart';
part 'student_model.g.dart';


@HiveType(typeId: 1)
class StudentModel extends HiveObject
 {
    @HiveType(typeId: 0)
   String studentname;
    @HiveType(typeId: 1)
   String parentrhone;
   @HiveType(typeId: 2)
   int idgroup;
  StudentModel(
    {required this.studentname,required this.parentrhone, required this.idgroup
    }
  );
  
}