import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:flutter/material.dart';

class MyTitles{
  static Text titles({required String title}) {
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