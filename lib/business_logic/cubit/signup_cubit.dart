import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_grad/business_logic/states/signup_states.dart';
class ChestsignUpCubit extends Cubit<ChestSignUpStates>{
  ChestsignUpCubit(super.ChestSignInitialState);
  static ChestsignUpCubit get(context) => BlocProvider.of(context);
  void userRegister({
  required String name,
    required String email,
    required String password,


}){
   emit(ChestSignLoadingState());
   FirebaseAuth.instance.createUserWithEmailAndPassword(
       email: email,
       password: password).then((value){
         emit(ChestSignSuccessState());
   }).catchError((error){
     emit(ChestSignErrorState(error.toString()));
   });
}
}