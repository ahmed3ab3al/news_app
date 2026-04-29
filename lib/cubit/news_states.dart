abstract class AppStates {}

class AppInitialStates extends AppStates {}

class ChangeBottomNavState extends AppStates {}

class GetGeneralDataLoadingState extends AppStates {}

class GetGeneralDataSuccessState extends AppStates {}

class GetGeneralDataFaliureState extends AppStates {
  final String errorMessage;

  GetGeneralDataFaliureState({required this.errorMessage});
}
