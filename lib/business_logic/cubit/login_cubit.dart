import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_grad/business_logic/states/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_grad/business_logic/states/signup_states.dart';


class ChestLoginCubit extends Cubit<ChestLoginStates>{
  ChestLoginCubit(super. ChestInitialState);
  static ChestLoginCubit get(context) => BlocProvider.of(context);
  void userLogin({
    required String email,
    required String password,


  }){
    emit(ChestLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password).then((value) {
          emit(ChestSuccessState());
    }).catchError((error){
      emit(ChestErrorState(error.toString()));
    });
  }
}
