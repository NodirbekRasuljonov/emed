import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/auth/signup/widgets/textFormField.dart';
import 'package:emed/screens/patients/auth/signup/widgets/titles.dart';
import 'package:emed/screens/patients/main/cubit/home_cubit.dart';
import 'package:emed/screens/patients/main/state/home_State.dart';
import 'package:emed/screens/patients/main/widgets/showdialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAppointment extends StatelessWidget {
  const AddAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePatientsCubit, HomePatientsState>(
      builder: (context, state) {
        return Scaffold(
            appBar: appoinmentsAppbar(context), body: addBody(context));
      },
      listener: (context, state) {},
    );
  }

  Container addBody(BuildContext context) {
    return Container(
      height: context.h,
      width: context.h,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bigSpace(),
            MyTitles.titles(title: 'Region'),
            littleSpace(),
            MyTextFormField.inputFields(
                hinttext: 'Enter your region',
                controller: context.watch<HomePatientsCubit>().region),
            bigSpace(),
            MyTitles.titles(title: 'District'),
            littleSpace(),
            MyTextFormField.inputFields(
                hinttext: 'Enter your district',
                controller: context.watch<HomePatientsCubit>().district),
            bigSpace(),
            MyTitles.titles(title: 'Hospital'),
            littleSpace(),
            MyTextFormField.inputFields(
                hinttext: 'Enter your hospital',
                controller: context.watch<HomePatientsCubit>().hospital),
            bigSpace(),
            MyTitles.titles(title: "Doctor's postion"),
            littleSpace(),
            MyTextFormField.inputFields(
                hinttext: "Enter your Doctor's Position",
                controller: context.watch<HomePatientsCubit>().doctospostion),
            bigSpace(),
            MyTitles.titles(title: 'The doctor'),
            littleSpace(),
            MyTextFormField.inputFields(
                hinttext: 'Enter the doctor you want',
                controller: context.watch<HomePatientsCubit>().doctor),
            bigSpace(),
            MyTitles.titles(title: 'Service type'),
            littleSpace(),
            MyTextFormField.inputFields(
                hinttext: "Enter the doctor's service type",
                controller: context.watch<HomePatientsCubit>().servicetype),
            bigSpace(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ColorsConst.kPrimaryColor,
                fixedSize: Size(context.h * 0.45, context.h * 0.056),
                textStyle: TextStyle(
                  color: ColorsConst.textWhiteColor,
                  fontSize: SizeConst.medium,
                ),
              ),
              onPressed: () {
                ShowDialog.dialog(context);
              },
              child: const Text(
                'Confirm',
              ),
            ),
            littleSpace()
          ],
        ),
      ),
    );
  }

  SizedBox littleSpace() => const SizedBox(
        height: 10.0,
      );

  SizedBox bigSpace() => const SizedBox(
        height: 30.0,
      );

  AppBar appoinmentsAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leadingWidth: 100.0,
      leading: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          'Cancel',
          style: TextStyle(
              fontSize: SizeConst.medium, fontWeight: FontWeight.w500),
        ),
      ),
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: ColorsConst.textColor,
          fontSize: SizeConst.medium,
          fontWeight: FontWeight.w600),
      title: const Text('Book an appointment'),
    );
  }
}
