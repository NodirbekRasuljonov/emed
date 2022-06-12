import 'package:bloc/bloc.dart';
import 'package:emed/screens/patients/main/view/pages/profile/state/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState>{
  ProfileCubit():super(ProfileInitialState(),);
}