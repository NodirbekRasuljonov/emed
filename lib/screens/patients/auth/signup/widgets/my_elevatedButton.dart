import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';

ElevatedButton MyElevatedBUtton({
  required String title,
  required String route,
  required BuildContext context,
  Color? color,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: ColorsConst.kPrimaryColor.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(
          RadiusConst.extrasmall,
        ),
      ),
      primary: color ?? ColorsConst.kPrimaryColor,
      fixedSize: Size(
        context.h * 0.45,
        context.h * 0.07,
      ),
    ),
    onPressed: () {
      Navigator.pushNamed(context, route);
    },
    child: Text(
      title,
      style: TextStyle(
        color: color==null?ColorsConst.textWhiteColor:ColorsConst.kPrimaryColor,
        fontSize: SizeConst.medium,
      ),
    ),
  );
}
