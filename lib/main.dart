import 'package:dialymath/db/BoxManager.dart';
import 'package:dialymath/screen/groups_screen/cubit/group_cubit.dart';
import 'package:dialymath/models/group_model.dart';
import 'package:dialymath/models/student_model.dart';
import 'package:dialymath/simple_bloc_observer.dart';
import 'package:dialymath/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(GroupModelAdapter());
  Hive.registerAdapter(StudentModelAdapter());
  await BoxManager.instance.initialize();
  runApp(const Dialymath());
}

class Dialymath extends StatelessWidget {
  const Dialymath({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GroupCubit(),
      child: MaterialApp(
        home: const Splashscreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          'SplashScreen': (context) => const Splashscreen(),
        },
        initialRoute: 'SplashScreen',
      ),
    );
  }
}
