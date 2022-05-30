import 'package:emed/core/base/base_view.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/auth/signup/cubit/signup_patient_cubit.dart';
import 'package:emed/screens/patients/auth/signup/state/signp_patients_state.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_AppBar.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_elevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_click/on_click.dart';

class PatientsSignUp extends StatelessWidget {
  const PatientsSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: PatientsSignUp,
      onPageBuilder: (context, widget) {
        return BlocConsumer<PatientsSignUpCubit, PatientsSignUpState>(
          builder: (context, state) => Scaffold(
            appBar: PatientsAppBar(context, title: 'Sign Up'),
            body: patientsignupBody(context),
          ),
          listener: (context, state) {},
        );
      },
    );
  }

  

  Container patientsignupBody(BuildContext context) => Container(
        height: context.h,
        width: context.h,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign up in order to get a full access to the system',
                style: TextStyle(
                  color: ColorsConst.authtextcolor,
                  fontSize: SizeConst.medium,
                ),
                textAlign: TextAlign.center,
              ),
              bigSpace(),
              titles(title: 'Full name'),
              littleSpace(),
              inputFields(
                hinttext: 'Enter Your full name ....',
                controller:
                    context.watch<PatientsSignUpCubit>().fullnamecontroller,
              ),
              bigSpace(),
              titles(title: 'Phone number'),
              littleSpace(),
              inputFields(
                hinttext: 'Enter your phone number....',
                controller:
                    context.watch<PatientsSignUpCubit>().phonenumbercontroller,
              ),
              bigSpace(),
              titles(title: 'Create password'),
              littleSpace(),
              inputFields(
                hinttext: 'Create your password....',
                controller:
                    context.watch<PatientsSignUpCubit>().passwordcontroller,
              ),
              bigSpace(),
             MyElevatedBUtton(title: 'Continue', route: '/confirmpage', context: context)
               
            ],
          ),
        ),
      );

  SizedBox bigSpace() {
    return const SizedBox(
      height: 50.0,
    );
  }

  SizedBox littleSpace() => const SizedBox(
        height: 10.0,
      );

  TextFormField inputFields({
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
