import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_elevatedButton.dart';
import 'package:emed/screens/patients/main/cubit/home_cubit.dart';
import 'package:emed/screens/patients/main/state/home_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_click/extensions/click_extension.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientsHomePage extends StatefulWidget {
  PatientsHomePage({Key? key}) : super(key: key);

  @override
  State<PatientsHomePage> createState() => _PatientsHomePageState();
}

class _PatientsHomePageState extends State<PatientsHomePage> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePatientsCubit, HomePatientsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: mainAppBar(),
            body: mainBody(context),
            bottomNavigationBar: Container(
              height: context.h * 0.07,
              width: context.h,
              color: Colors.red.withOpacity(0.6),
              alignment: Alignment.center,
              child: mainBottom(context),
            ),
          );
        },
        listener: (context, state) {});
  }

  Row mainBottom(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        bars(
            label: 'Home',
            iconData: SvgPicture.asset('assets/svg/home/home_icon.svg'),
            index: 0,
            context: context),
        bars(
            label: 'Treatments',
            iconData: Image.asset('assets/images/injection.png'),
            index: 1,
            context: context),
      ],
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

  Widget bars(
      {required String label,
      required Widget iconData,
      required int index,
      required BuildContext context}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        iconData,
        Text(
          label,
          style: TextStyle(
            color: currentindex == index
                ? ColorsConst.kPrimaryColor
                
                : ColorsConst.textColor,
            fontSize: 12,
          ),
        ),
      ],
    ).onClick(() {
      
      setState(() {
        currentindex==index;
        
      });
  
     
      
    });
  }
}
