import 'package:dialymath/cubits/cubit/group_cubit_cubit.dart';
import 'package:dialymath/models/student_model.dart';
import 'package:dialymath/widgets/coustm_bt.dart';
import 'package:dialymath/widgets/coustm_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentForm extends StatefulWidget {
  const StudentForm({
    super.key,
    required this.day,
    //TODO: Provide a default value untill
    //TODO: you how group id is added
    this.groupId = 0,
  });
  final int day;
  final int? groupId;

  @override
  State<StudentForm> createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  String? name, phone;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                CoustmTextfield(
                    hinttext: 'Student name',
                    // TODO: Store user input
                    onchange: (enterdName) {
                      name = enterdName;
                    },
                    onsave: (value) {
                      name = value;
                    }),
                const SizedBox(
                  height: 20,
                ),
                CoustmTextfield(
                  hinttext: 'phone',
                  // TODO: Store user input
                  onchange: (enterdPhone) {
                    phone = enterdPhone;
                  },
                  onsave: (value) {
                    phone = value;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CoustmBt(
                      bttext: 'Add Student',
                      isload: State is AddgroupLoading ? true : false,
                      ontab: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          var studentmodel = StudentModel(
                              studentname: name!,
                              parentrhone: phone!,
                              idgroup: widget.groupId!);
                          BlocProvider.of<GroupCubitCubit>(context)
                              .addstudent(studentmodel);
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CoustmBt(
                      bttext: 'Cancel',
                      ontab: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
