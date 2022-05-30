import 'package:bloc/bloc.dart';
import 'package:emed/screens/patients/auth/signup/state/signp_patients_state.dart';
import 'package:flutter/cupertino.dart';

class PatientsSignUpCubit extends Cubit<PatientsSignUpState>{
  PatientsSignUpCubit():super(PatientsSignUpInitialState());

  TextEditingController fullnamecontroller=TextEditingController();
  TextEditingController phonenumbercontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
}