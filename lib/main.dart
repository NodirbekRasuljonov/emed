import 'package:emed/routes/app_routes.dart';
import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(const MyApp(),);
  
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppRoutes appRoutes=AppRoutes();
    return MaterialApp(
      title: 'E-med',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoutes.onGenerateRoute,
      initialRoute: '/patientgetstarted',
    );
    
  }
}