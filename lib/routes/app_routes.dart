import 'package:emed/screens/patients/auth/signup/view/confirmation_code.dart';
import 'package:emed/screens/patients/auth/signup/view/login_page.dart';
import 'package:emed/screens/patients/auth/signup/view/personal_id.dart';
import 'package:emed/screens/patients/auth/signup/view/signup_patient.dart';
import 'package:emed/screens/patients/getstarted_page.dart';
import 'package:emed/screens/patients/main/view/pages/home/view/add_appointments.dart';
import 'package:emed/screens/patients/main/view/main_home_page.dart';
import 'package:emed/screens/patients/main/view/pages/profile/view/profile_page.dart';
import 'package:emed/screens/patients/splashscreen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/patientsplash':
        return MaterialPageRoute(
          builder: (context) => const PatientsSplash(),
        );
      case '/patientgetstarted':
        return MaterialPageRoute(
          builder: (context) => const PatientGetStarted(),
        );
      case '/patientsignup':
        return MaterialPageRoute(
          builder: (context) => const PatientsSignUp(),
        );
      case '/patientlogin':
        return MaterialPageRoute(
          builder: (context) => const PatientsLoginPage(),
        );
      case '/confirmpage':
        return MaterialPageRoute(
          builder: (context) => const PatientsSignUpConfirmationPage(),
        );
        case '/personalid':
        return MaterialPageRoute(
          builder: (context) => const PersonalId(),
        );
        case '/main':
        return MaterialPageRoute(
          builder: (context) => PatientsHomePage(),
        );
        case '/addappointment':
        return MaterialPageRoute(
          builder: (context) => const AddAppointment(),
        );
        case '/profile':
        return MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        );
    }
  }
}
