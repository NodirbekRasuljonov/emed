import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_AppBar.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_elevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PatientsSignUpConfirmationPage extends StatelessWidget {
  const PatientsSignUpConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PatientsAppBar(context, title: 'Sign Up'),
      body: body(context),
    );
  }

  Container body(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: context.h,
      width: context.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'We sent a confirmation code to your number. Please, enter the code',
            style: TextStyle(
              color: ColorsConst.authtextcolor,
              fontSize: SizeConst.medium,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50.0,
          ),
          Text(
            'Confirmation Code',
            style: TextStyle(
              color: ColorsConst.textColor,
              fontSize: SizeConst.medium,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          PinCodeTextField(
            appContext: context,
            length: 6,
            pinTheme: PinTheme(
                selectedColor: ColorsConst.kPrimaryColor,
                activeColor: ColorsConst.kPrimaryColor,
                activeFillColor: Colors.white,
                inactiveColor: ColorsConst.authtextcolor,
                borderRadius: BorderRadius.circular(
                  RadiusConst.small,
                )),
            onChanged: (text) {
              debugPrint("$text");
            },
          ),
          const SizedBox(
            height: 50.0,
          ),
          MyElevatedBUtton(
              title: 'Confirm', route: '/personalid', context: context)
        ],
      ),
    );
  }
}
