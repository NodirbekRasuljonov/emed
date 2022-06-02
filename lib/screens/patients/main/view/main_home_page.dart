import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_elevatedButton.dart';
import 'package:emed/screens/patients/main/cubit/home_cubit.dart';
import 'package:emed/screens/patients/main/state/home_State.dart';
import 'package:emed/screens/patients/treatments/treatment_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:on_click/on_click.dart';

class PatientsHomePage extends StatefulWidget {
  PatientsHomePage({Key? key}) : super(key: key);

  @override
  State<PatientsHomePage> createState() => _PatientsHomePageState();
}

class _PatientsHomePageState extends State<PatientsHomePage> {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePatientsCubit, HomePatientsState>(
        builder: (context, state) {
         
            return Scaffold(
            appBar: mainAppBar(),
            body: mainBody(context),
            bottomNavigationBar: mainBottomNavigationBar(context),
          );
        },
        listener: (context, state) {});
  }

  SizedBox mainBottomNavigationBar(BuildContext context) {
    return SizedBox(
            height: context.h * 0.07,
            width: context.h,
            child: Row(
              children: [
                bars(
                    icon: Icon(
                      Icons.home,
                      color: context.watch<HomePatientsCubit>().currentindex == 0
                          ? ColorsConst.kPrimaryColor
                          : ColorsConst.textColor,
                    ),
                    index: 0,
                    label: 'Home'),
                bars(
                    label: 'Treatments',
                    icon: Icon(
                      Icons.medication_rounded,
                      color: context.watch<HomePatientsCubit>().currentindex == 1
                          ? ColorsConst.kPrimaryColor
                          : ColorsConst.textColor,
                    ),
                    index: 1),
                bars(
                    label: 'Doctors',
                    icon: Icon(
                      Icons.medical_information_outlined,
                      color: context.watch<HomePatientsCubit>().currentindex == 2
                          ? ColorsConst.kPrimaryColor
                          : ColorsConst.textColor,
                    ),
                    index: 2),
                bars(
                    label: 'Hospitals',
                    icon: Icon(
                      Icons.local_hospital_sharp,
                      color: context.watch<HomePatientsCubit>().currentindex == 3
                          ? ColorsConst.kPrimaryColor
                          : ColorsConst.textColor,
                    ),
                    index: 3),
              ],
            ),
          );
  }

  Expanded bars(
      {required String label, required Icon icon, required int index}) {
    return Expanded(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            icon,
            Text(
              label,
              style: TextStyle(
                color: context.watch<HomePatientsCubit>().currentindex == index
                    ? ColorsConst.kPrimaryColor
                    : ColorsConst.textColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ).onClick(
        () {
          context.read<HomePatientsCubit>().changetheIndex(index: index);
        },
      ),
    );
  }

  Container mainBody(BuildContext context) {
    return Container(
      height: context.h,
      width: context.h,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: context.h * 0.5,
              width: context.h * 0.5,
              color: Colors.red,
            ),
            SfCalendar(
              view: CalendarView.month,
            ),
            Container(
              height: context.h * 0.5,
              width: context.h * 0.5,
              color: Colors.amber,
            ),
            const SizedBox(
              height: 30.0,
            ),
            MyElevatedBUtton(
              
                title: 'Add new appointment',
                route: '/addappointment',
                context: context),
            const SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }

  AppBar mainAppBar() {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SvgPicture.asset('assets/svg/noti.svg'),
        ),
      ],
      leading: Image.asset('assets/images/profile_icon.png'),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: SvgPicture.asset('assets/svg/home_icon.svg'),
    );
  }
}
