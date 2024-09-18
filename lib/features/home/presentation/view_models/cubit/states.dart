abstract class NewsStates {}

class InitialState extends NewsStates {}


class ChangeBottomNavState extends NewsStates {}

class GetBusinessSuccessState extends NewsStates {}

class GetBusinessLoadingState extends NewsStates {}

class GetBusinessErrorState extends NewsStates {
  final String error;

  GetBusinessErrorState({required this.error});}

class GetSportsSuccessState extends NewsStates {}

class GetSportsLoadingState extends NewsStates {}

class GetSportsErrorState extends NewsStates {
  final String error;

  GetSportsErrorState({required this.error});
}

class GetScienceSuccessState extends NewsStates {}

class GetScienceLoadingState extends NewsStates {}

class GetScienceErrorState extends NewsStates {
  final String error;


  GetScienceErrorState({required this.error});
}

class ChangeAppMode extends NewsStates {}