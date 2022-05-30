import 'package:emed/screens/patients/auth/login/view/login_patients.dart';
import 'package:emed/screens/patients/auth/signup/view/confirmation_code.dart';
import 'package:emed/screens/patients/auth/signup/view/signup_patient.dart';
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
      case '/patientsignup':
        return MaterialPageRoute(
          builder: (context) => PatientsSignUp(),
        );
      case '/patientlogin':
        return MaterialPageRoute(
          builder: (context) => PatientsLogin(),
        );
      case '/confirmpage':
        return MaterialPageRoute(
          builder: (context) => PatientsSignUpConfirmationPage(),
        );
    }
  }
}
