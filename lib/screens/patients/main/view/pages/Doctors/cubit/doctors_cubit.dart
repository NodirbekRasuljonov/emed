import 'package:bloc/bloc.dart';
import 'package:emed/screens/patients/main/view/pages/Doctors/state/doctors_state.dart';
import 'package:flutter/cupertino.dart';

class DoctorsCubit extends Cubit<DoctorsState>{
  DoctorsCubit():super(DoctorsInitialState(),);


  TextEditingController servicetype=TextEditingController();
  TextEditingController date=TextEditingController();
}