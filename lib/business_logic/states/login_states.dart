abstract class ChestLoginStates{}
 class ChestInitialState extends ChestLoginStates{}
  class ChestLoadingState extends ChestLoginStates{}
  class ChestSuccessState extends ChestLoginStates{}
   class ChestErrorState extends ChestLoginStates{
  final String error;
  ChestErrorState(this.error);
   }