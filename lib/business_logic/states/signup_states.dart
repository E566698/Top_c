abstract class ChestSignUpStates{}
class ChestSignInitialState extends ChestSignUpStates{}
class ChestSignLoadingState extends ChestSignUpStates{}
class ChestSignSuccessState extends ChestSignUpStates{}
class ChestSignErrorState extends ChestSignUpStates{
  final String error;
  ChestSignErrorState(this.error);
}