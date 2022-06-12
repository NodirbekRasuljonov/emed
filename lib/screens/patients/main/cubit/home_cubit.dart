import 'package:bloc/bloc.dart';
import 'package:emed/screens/patients/main/state/home_State.dart';
import 'package:flutter/material.dart';

class HomePatientsCubit extends Cubit<HomePatientsState> {
  HomePatientsCubit() : super(HomePatientsInitialState());

  int currentindex = 0;
  TextEditingController region = TextEditingController();
  TextEditingController district = TextEditingController();
  TextEditingController hospital = TextEditingController();
  TextEditingController doctospostion = TextEditingController();
  TextEditingController doctor = TextEditingController();
  TextEditingController servicetype = TextEditingController();

  void changetheIndex({required int index}) {
    if (index == 0) {
      currentindex = index;
      emit(
        HomePatientsInitialState(),
      );
    } else if (index == 1) {
      currentindex = index;
      emit(
        HomePatientsTreatmentState(),
      );
    } else if (index == 2) {
      currentindex = index;
      emit(
        HomePatientsDoctorsState(),
      );
    } else if (index == 3) {
      currentindex = index;
      emit(
        HomePatientsHospitalState(),
      );
    }
  }
}
