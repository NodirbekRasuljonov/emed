import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:on_click/extensions/click_extension.dart';

class PatientsSignUpConfirmationPage extends StatelessWidget {
  const PatientsSignUpConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: patientsignupAppBar(context),
      body: body(context),
    );
  }

  SizedBox body(BuildContext context) {
    return SizedBox(
      height: context.h,
      width: context.h,
      child: Column(
        children: [
          Text(
            'We sent a confirmation code to your number. Please, enter the code',
            style: TextStyle(
                color: ColorsConst.authtextcolor, fontSize: SizeConst.medium),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  AppBar patientsignupAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Sign Up',
        style: TextStyle(
          color: ColorsConst.textColor,
          fontSize: SizeConst.medium,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leadingWidth: 100.0,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            const Icon(Icons.arrow_back_ios),
            Text(
              'Back',
              style: TextStyle(
                color: ColorsConst.kPrimaryColor,
                fontSize: SizeConst.medium,
              ),
            )
          ],
        ).onClick(
          () {
            Navigator.pop(context);
          },
        ),
      ),
      iconTheme: IconThemeData(
        color: ColorsConst.kPrimaryColor,
      ),
    );
  }
}
