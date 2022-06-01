import 'package:bloc/bloc.dart';
import 'package:emed/screens/patients/main/state/home_State.dart';

class HomePatientsCubit extends Cubit<HomePatientsState> {
  HomePatientsCubit()
      : super(
          HomePatientsInitialState(),
        );


    changetheIndex({required int index,required int currentindex}){
      if(index==0){
        currentindex==index;
        emit(HomePatientsInitialState());
      }
      else if(index==1){
        currentindex==index;
        emit(HomePatientsTreatmentState());
      }else if(index==2){
        currentindex==index;
        emit(HomePatientsDoctorsState());
      }
      else if(index==3){
        currentindex==index;
        emit(HomePatientsHospitalState());
      }

    }
}
