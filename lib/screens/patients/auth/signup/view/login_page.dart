import 'package:emed/screens/patients/auth/signup/widgets/my_AppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PatientsLoginPage extends StatelessWidget {
  const PatientsLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PatientsAppBar(context, title: 'Log in'),
    );
    
  }
}