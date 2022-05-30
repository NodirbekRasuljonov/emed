import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_elevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientGetStarted extends StatelessWidget {
  const PatientGetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.h,
        width: context.h,
        child: Stack(
          children: [
            Positioned(
              top: context.h * 0.084,
              left: context.h * 0.088,
              right: context.h * 0.088,
              child: SvgPicture.asset(
                'assets/svg/getstartedicon.svg',
              ),
            ),
            Positioned(
              top: context.h * 0.209,
              right: context.h * 0.02,
              left: context.h * 0.02,
              child: SvgPicture.asset(
                'assets/svg/getstartedframe.svg',
              ),
            ),
            Positioned(
              left: context.h * 0.02,
              right: context.h * 0.02,
              bottom: context.h * 0.15,
              child: MyElevatedBUtton(
                title: 'Get Started',
                route: '/patientsignup',
                context: context,
              ),
            ),
            Positioned(
              left: context.h * 0.02,
              right: context.h * 0.02,
              bottom: context.h * 0.05,
              child: MyElevatedBUtton(
                title: 'Log in',
                route: '/patientlogin',
                context: context,
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
