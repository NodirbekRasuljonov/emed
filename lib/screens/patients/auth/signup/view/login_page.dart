import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/auth/signup/cubit/signup_patient_cubit.dart';
import 'package:emed/screens/patients/auth/signup/state/signp_patients_state.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_AppBar.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_elevatedButton.dart';
import 'package:emed/screens/patients/auth/signup/widgets/textFormField.dart';
import 'package:emed/screens/patients/auth/signup/widgets/titles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientsLoginPage extends StatelessWidget {
  const PatientsLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PatientsSignUpCubit, PatientsSignUpState>(
        builder: (context, state) {
          return Scaffold(
            appBar: PatientsAppBar(context, title: 'Log in'),
            body: Container(
              height: context.h,
              width: context.h,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Log in to your account',
                    style: TextStyle(
                      color: ColorsConst.authtextcolor,
                      fontSize: SizeConst.medium,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  space(),
                  MyTitles.titles(title: 'Phone number'),
                  spacelittle(),
                  MyTextFormField.inputFields(
                    controller: context
                        .read<PatientsSignUpCubit>()
                        .loginphonenumbercontroller,
                    hinttext: 'Phone number',
                  ),
                  space(),
                  MyTitles.titles(title: 'Your Password'),
                  spacelittle(),
                  MyTextFormField.inputFields(
                    controller: context
                        .read<PatientsSignUpCubit>()
                        .loginpasswordcontroller,
                    hinttext: 'Enter your Password ....',
                  ),
                  space(),
                  MyElevatedBUtton(title: 'Log in', route: '/main', context: context),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }

  SizedBox spacelittle() => const SizedBox(height: 10.0);

  SizedBox space() => const SizedBox(height: 30.0);
}
