import 'package:emed/screens/patients/auth/signup/view/confirmation_code.dart';
import 'package:emed/screens/patients/auth/signup/view/login_page.dart';
import 'package:emed/screens/patients/auth/signup/view/personal_id.dart';
import 'package:emed/screens/patients/auth/signup/view/signup_patient.dart';
import 'package:emed/screens/patients/getstarted_page.dart';
import 'package:emed/screens/patients/main/view/add_appointments.dart';
import 'package:emed/screens/patients/main/view/main_home_page.dart';
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
          builder: (context) => PatientsLoginPage(),
        );
      case '/confirmpage':
        return MaterialPageRoute(
          builder: (context) => PatientsSignUpConfirmationPage(),
        );
        case '/personalid':
        return MaterialPageRoute(
          builder: (context) => PersonalId(),
        );
        case '/main':
        return MaterialPageRoute(
          builder: (context) => PatientsHomePage(),
        );
        case '/addappointment':
        return MaterialPageRoute(
          builder: (context) => AddAppointment(),
        );
    }
  }
}
