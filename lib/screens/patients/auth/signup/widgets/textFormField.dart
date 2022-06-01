import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:flutter/material.dart';

class MyTextFormField{
  static TextFormField inputFields({
    required String hinttext,
    required TextEditingController controller,
    isSecure,
  }) =>
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(color: ColorsConst.authtextcolor),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsConst.kPrimaryColor,
            ),
            borderRadius: BorderRadius.circular(
              RadiusConst.small,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsConst.kPrimaryColor,
            ),
            borderRadius: BorderRadius.circular(
              RadiusConst.small,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsConst.kPrimaryColor,
            ),
            borderRadius: BorderRadius.circular(
              RadiusConst.small,
            ),
          ),
        ),
      );

  Text titles({required String title}) {
    return Text(
      title,
      style: TextStyle(
        color: ColorsConst.textColor,
        fontSize: SizeConst.medium,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

