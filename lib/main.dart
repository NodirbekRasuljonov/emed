import 'package:emed/routes/app_routes.dart';
import 'package:emed/screens/patients/auth/signup/cubit/signup_patient_cubit.dart';
import 'package:emed/screens/patients/main/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PatientsSignUpCubit(),
        ),
        BlocProvider(create: (context)=>HomePatientsCubit(),),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppRoutes appRoutes = AppRoutes();
    return MaterialApp(
      title: 'E-med',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoutes.onGenerateRoute,
      initialRoute: '/main',
    );
  }
}
