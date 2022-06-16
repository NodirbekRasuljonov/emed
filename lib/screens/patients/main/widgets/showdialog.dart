import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';
class ShowDialog{
  static dialog(context){return
  showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Container(
                        height:context.h * 0.346,
                        width: context.h * 0.329,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(RadiusConst.medium),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: context.h * 0.1,
                              right: context.h * 0.1,
                              child: Image.asset(
                                'assets/images/Union.png',
                              ),
                            ),
                            Positioned(
                              top: context.h * 0.124,
                              left: context.h * 0.024,
                              right: context.h * 0.024,
                              child: Text(
                                'You have succesfully booked an appointment',
                                style: TextStyle(
                                    color: ColorsConst.textColor,
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Positioned(
                              top: context.h * 0.184,
                              left: context.h * 0.045,
                              right: context.h * 0.045,
                              child: Text(
                                'You can go to Nodirbek Rasuljonov on January 24 at 10:00 -11:00',
                                style: TextStyle(
                                    fontSize: SizeConst.small,
                                    color: ColorsConst.authtextcolor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Positioned(
                              top: context.h * 0.268,
                              left: context.h * 0.030,
                              right: context.h * 0.030,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(
                                      context.h * 0.286, context.h * 0.054),
                                  primary: ColorsConst.kPrimaryColor,
                                  textStyle: TextStyle(
                                    color: ColorsConst.textWhiteColor,
                                    fontSize: SizeConst.medium,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/main', (route) => false);
                                },
                                child: Text(
                                  'Go home',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
  );}
}