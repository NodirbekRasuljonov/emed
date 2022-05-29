import 'package:emed/screens/patients/getstarted_page.dart';
import 'package:emed/screens/patients/splashscreen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/patientsplash':
        return MaterialPageRoute(
          builder: (context) => PatientsSplash(),
        );
      case '/patientgetstarted':
        return MaterialPageRoute(
          builder: (context) => PatientGetStarted(),
        );
    }
  }
}
