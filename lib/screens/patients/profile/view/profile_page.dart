import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_AppBar.dart';
import 'package:emed/screens/patients/auth/signup/widgets/titles.dart';
import 'package:emed/screens/patients/profile/cubit/profile_cubit.dart';
import 'package:emed/screens/patients/profile/state/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: PatientsAppBar(context, title: 'My Profile'),
          body: body(context),
        );
      },
      listener: (context, state) {},
    );
  }

  Container body(BuildContext context) {
    return Container(
      height: context.h,
      width: context.h,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            space(),
            const CircleAvatar(
                  radius: 55.0,
                  backgroundImage: AssetImage('assets/images/profile.jpg')),
             space(),
             ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: SizeConst.medium),
                  fixedSize: Size(context.h * 0.2, context.h * 0.06),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(RadiusConst.extrasmall),
                  ),
                  primary: ColorsConst.kPrimaryColor,
                ),
                onPressed: () {},
                child: const Text(
                  "Upload new picture",
                ),
              ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Delete photo",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              MyTitles.titles(title: 'ID'),
              littleSpace(),
          ],
        ),
      ),
    );
  }

  SizedBox littleSpace() => SizedBox(height: 10.0,);

  SizedBox space() => const SizedBox(height: 30.0,);
}
