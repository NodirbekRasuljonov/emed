import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientGetStarted extends StatelessWidget {
  const PatientGetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      RadiusConst.extrasmall,
                    ),
                    side: BorderSide(
                      color: ColorsConst.kPrimaryColor,
                    ),
                  ),
                  primary: ColorsConst.kPrimaryColor,
                  fixedSize: Size(
                    context.h * 0.336,
                    context.h * 0.054,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/patientsignup');
                },
                child: Text(
                  "Get Started",
                ),
              ),
            ),
            Positioned(
              left: context.h * 0.02,
              right: context.h * 0.02,
              bottom: context.h * 0.05,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: ColorsConst.kPrimaryColor,
                    ),
                    borderRadius: BorderRadius.circular(
                      RadiusConst.extrasmall,
                    ),
                  ),
                  fixedSize: Size(context.h * 0.336, context.h * 0.054),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/patientlogin');
                },
                child: Text(
                  "Log in",
                  style: TextStyle(color: ColorsConst.kPrimaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
