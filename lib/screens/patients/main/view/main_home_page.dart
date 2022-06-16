import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/main/cubit/home_cubit.dart';
import 'package:emed/screens/patients/main/state/home_State.dart';
import 'package:emed/screens/patients/main/view/pages/Doctors/view/doctors_page.dart';
import 'package:emed/screens/patients/main/view/pages/Home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return Scaffold(
      body: BlocConsumer<HomePatientsCubit,HomePatientsState>(
        builder: (context, state) {
          if(state is HomePatientsInitialState){
            return Scaffold(
              appBar: mainAppBar(),
              body: MyHomoPage(),
            );
          }
          else if(state is HomePatientsTreatmentState){
            return Container(color: Colors.red,);
          }else if(state is HomePatientsDoctorsState){
            return DoctorsPage();
          }
          else{
            return Container(
              color: Colors.blue,
            );
          }
        },
        listener: (context, state) {},
      ),
      bottomNavigationBar: mainBottomNavigationBar(context),
    );
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

  AppBar mainAppBar() {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SvgPicture.asset('assets/svg/noti.svg'),
        ),
      ],
      leading: Image.asset('assets/images/profile_icon.png').onClick(() {
        Navigator.pushNamed(context, '/profile');
      }),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: SvgPicture.asset('assets/svg/home_icon.svg'),
    );
  }
}
