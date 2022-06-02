import 'package:bloc/bloc.dart';
import 'package:emed/screens/patients/profile/state/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState>{
  ProfileCubit():super(ProfileInitialState(),);
}