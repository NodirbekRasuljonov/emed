import 'dart:async';

import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientsSplash extends StatefulWidget {
  const PatientsSplash({Key? key}) : super(key: key);

  @override
  State<PatientsSplash> createState() => _PatientsSplashState();
}

class _PatientsSplashState extends State<PatientsSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/patientgetstarted', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.h,
        width: context.h,
        decoration: BoxDecoration(color: ColorsConst.kPrimaryColor),
        alignment: Alignment.center,
        child: SvgPicture.asset('assets/svg/icon.svg'),
      ),
    );
  }
}
