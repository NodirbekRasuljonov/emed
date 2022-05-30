import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:on_click/extensions/click_extension.dart';

class PatientsLogin extends StatelessWidget {
  const PatientsLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: patientappBar(context),
    );
  }

  

  AppBar patientappBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Log in',
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
              Icon(Icons.arrow_back_ios),
              Text(
                'Back',
                style: TextStyle(
                  color: ColorsConst.kPrimaryColor,
                  fontSize: SizeConst.medium,
                ),
              )
            ],
          ).onClick(() {
            Navigator.pop(context);
          })),
      iconTheme: IconThemeData(
        color: ColorsConst.kPrimaryColor,
      ),
    );
  }
}
