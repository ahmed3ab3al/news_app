abstract class AppStates {}

class AppInitialStates extends AppStates {}

class ChangeBottomNavState extends AppStates {}

class GetGeneralDataLoadingState extends AppStates {}

class GetGeneralDataSuccessState extends AppStates {}

class GetGeneralDataFaliureState extends AppStates {
  final String errorMessage;

  GetGeneralDataFaliureState({required this.errorMessage});
}


class GetBusinessDataLoadingState extends AppStates {}

class GetBusinessDataSuccessState extends AppStates {}

class GetBusinessDataFaliureState extends AppStates {
  final String errorMessage;

  GetBusinessDataFaliureState({required this.errorMessage});
}


class GetScienceDataLoadingState extends AppStates{}
class GetScienceDataSuccessState extends AppStates{}
class GetScienceDataFailureState extends AppStates{
   final String errorMessage;

  GetScienceDataFailureState({required this.errorMessage});
}

class GetSportsDataLoadingState extends AppStates{}
class GetSportsDataSuccessState extends AppStates{}
class GetSportsDataFailureState extends AppStates{
   final String errorMessage;

  GetSportsDataFailureState({required this.errorMessage});
}