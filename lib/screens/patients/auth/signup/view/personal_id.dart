import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_AppBar.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_elevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:on_click/extensions/click_extension.dart';

class PersonalId extends StatelessWidget {
  const PersonalId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PatientsAppBar(context, title: 'Your Personal ID'),
      body: Container(
        height: context.h,
        width: context.h,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/personalid.png'),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "Doctors use your ID to have an access to your medical informations. We have sent this ID and your password to your number so you don’t forget them",
              style: TextStyle(
                color: ColorsConst.authtextcolor,
                fontSize: SizeConst.medium,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Your ID',
              style: TextStyle(
                color: ColorsConst.textColor,
                fontSize: SizeConst.large,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Container(
                  height: context.h * 0.07,
                  width: context.h * 0.28,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsConst.authtextcolor.withOpacity(
                        0.7,
                      ),
                    ),
                    color: ColorsConst.authtextcolor.withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(RadiusConst.medium),
                      bottomLeft: Radius.circular(
                        RadiusConst.medium,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      '3267466',
                      style: TextStyle(
                        fontSize: SizeConst.medium,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: context.h * 0.07,
                  width: context.h * 0.12,
                  decoration: BoxDecoration(
                    color: ColorsConst.authtextcolor.withOpacity(0.1),
                    border: Border.all(
                      color: ColorsConst.authtextcolor.withOpacity(
                        0.5,
                      ),
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        RadiusConst.medium,
                      ),
                      bottomRight: Radius.circular(
                        RadiusConst.medium,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'copy',
                        style: TextStyle(fontSize: SizeConst.medium),
                      ),
                      IconButton(
                        icon: Icon(Icons.copy_outlined),
                        onPressed: () {
                          debugPrint("Copied");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            MyElevatedBUtton(
                title: 'Go to your account',
                route: '/patienthome',
                context: context),
          ],
        ),
      ),
    );
  }
}
