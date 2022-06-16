import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/main/view/pages/Doctors/cubit/doctors_cubit.dart';
import 'package:emed/screens/patients/main/view/pages/Doctors/state/doctors_state.dart';
import 'package:emed/screens/patients/main/widgets/showdialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_click/on_click.dart';

class AppointmentWithDoctor extends StatelessWidget {
  const AppointmentWithDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorsCubit, DoctorsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              leading: Row(
                children: [
                  const Icon(
                    Icons.chevron_left_outlined,
                    color: Colors.blue,
                    size: 33.0,
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                        color: Colors.blue, fontSize: SizeConst.medium),
                  )
                ],
              ).onClick(() {
                Navigator.pop(context);
              }),
              leadingWidth: 100.0,
              title: Text('Book an appointment'),
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: ColorsConst.textColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
            body: SizedBox(
              height: context.h,
              width: context.h,
              child: Column(
                children: [
                  Container(
                    height: context.h * 0.19,
                    width: context.h,
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Appointmet to:',
                          style: TextStyle(fontSize: SizeConst.medium),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 44.0,
                              backgroundImage:
                                  AssetImage('assets/images/profile.jpg'),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            SizedBox(
                              width: context.h * 0.22,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nodirbek Rasuljonov',
                                    style: TextStyle(
                                        fontSize: SizeConst.medium,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Pediatric Pulmonolog at Pediatric Hospital No:4',
                                    style: TextStyle(),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: context.h * 0.5,
                    width: context.h,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        title(title: 'Service type'),
                        littlespacee(),
                        TextFormField(
                          controller: context.watch<DoctorsCubit>().servicetype,
                          decoration: InputDecoration(
                            hintText: 'Enter the service type',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                RadiusConst.medium,
                              ),
                            ),
                          ),
                        ),
                        bigspace(),
                        title(title: 'Enter the time'),
                        littlespacee(),
                        TextFormField(
                          controller: context.watch<DoctorsCubit>().date,
                          decoration: InputDecoration(
                            hintText: 'Enter the date',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(RadiusConst.medium),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ColorsConst.kPrimaryColor,
                      fixedSize: Size(336, 54)
                    ),
                    onPressed: () {
                      ShowDialog.dialog(context);
                    },
                    child: Text(
                      'Confirm',
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  SizedBox bigspace() => SizedBox(
        height: 30.0,
      );

  SizedBox littlespacee() => SizedBox(
        height: 10.0,
      );

  Text title({required String title}) => Text(
        title,
        style: TextStyle(color: Colors.black.withOpacity(0.7)),
      );
}
