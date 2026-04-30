import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/api/api_consumer.dart';
import 'package:news_app/core/api/end_points.dart';
import 'package:news_app/core/errors/exceptions.dart';
import 'package:news_app/cubit/news_states.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/modules/business/business_screen.dart';
import 'package:news_app/modules/general/general_screen.dart';
import 'package:news_app/modules/science/science_screen.dart';
import 'package:news_app/modules/sports/sports_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit({required this.api}) : super(AppInitialStates());
  final ApiConsumer api;

  static AppCubit get(BuildContext context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<ArticalModel> articalsGeneralList = [];
  List<ArticalModel> articalsBusinessList = [];
  List<ArticalModel> articalsScienceList = [];
  List<ArticalModel> articalsSportsList = [];

  List<Widget> screens = [
    GeneralScreen(),
    BusinessScreen(),
    ScienceScreen(),
    SportsScreen(),
  ];
  List<BottomNavigationBarItem> bottomNavItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.newspaper_outlined),
      label: 'General',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.business_rounded),
      label: 'Business',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Science'),
    BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Sports'),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    if (index == 1) {
      getBusinessData();
    } else if (index == 2) {
      getScienceData();
    } else if (index == 3) {
      getSportsData();
    }

    emit(ChangeBottomNavState());
  }

  Future<List<ArticalModel>> getGeneralData() async {
    try {
      emit(GetGeneralDataLoadingState());
      final response = await api.get(
        EndPoints.newsData,
        queryParameters: {
          ApiKeys.countryKey: ApiKeys.countryValue,
          ApiKeys.categoryKey: ApiKeys.categoryGeneralValue,
          ApiKeys.apiKey: ApiKeys.apiKeyValue,
        },
      );

      Map<String, dynamic> jsonData = response;
      List<dynamic> articles = jsonData['articles'];
      for (var item in articles) {
        ArticalModel articalModel = ArticalModel.fromjson(item);
        articalsGeneralList.add(articalModel);
        emit(GetGeneralDataSuccessState());
      }
    } on ServerExcption catch (e) {
      emit(GetGeneralDataFaliureState(errorMessage: e.errorModel.errorMessage));
    }
    return articalsGeneralList;
  }

  Future<List<ArticalModel>> getBusinessData() async {
    try {
      emit(GetBusinessDataLoadingState());
      final response = await api.get(
        EndPoints.newsData,
        queryParameters: {
          ApiKeys.countryKey: ApiKeys.countryValue,
          ApiKeys.categoryKey: ApiKeys.categoryBusinessValue,
          ApiKeys.apiKey: ApiKeys.apiKeyValue,
        },
      );

      Map<String, dynamic> jsonData = response;
      List<dynamic> articles = jsonData['articles'];
      for (var item in articles) {
        ArticalModel articalModel = ArticalModel.fromjson(item);
        articalsBusinessList.add(articalModel);
        emit(GetBusinessDataSuccessState());
      }
    } on ServerExcption catch (e) {
      emit(
        GetBusinessDataFaliureState(errorMessage: e.errorModel.errorMessage),
      );
    }
    return articalsBusinessList;
  }

  Future<List<ArticalModel>> getScienceData() async {
    try {
      emit(GetScienceDataLoadingState());
      final response = await api.get(
        EndPoints.newsData,
        queryParameters: {
          ApiKeys.countryKey: ApiKeys.countryValue,
          ApiKeys.categoryKey: ApiKeys.categoryScienceValue,
          ApiKeys.apiKey: ApiKeys.apiKeyValue,
        },
      );

      Map<String, dynamic> jsonData = response;
      List<dynamic> articles = jsonData['articles'];
      for (var item in articles) {
        ArticalModel articalModel = ArticalModel.fromjson(item);
        articalsScienceList.add(articalModel);
        emit(GetScienceDataSuccessState());
      }
    } on ServerExcption catch (e) {
      emit(GetScienceDataFailureState(errorMessage: e.errorModel.errorMessage));
    }
    return articalsScienceList;
  }

  Future<List<ArticalModel>> getSportsData() async {
    try {
      emit(GetSportsDataLoadingState());
      final response = await api.get(
        EndPoints.newsData,
        queryParameters: {
          ApiKeys.countryKey: ApiKeys.countryValue,
          ApiKeys.categoryKey: ApiKeys.categorySportsValue,
          ApiKeys.apiKey: ApiKeys.apiKeyValue,
        },
      );
      Map<String, dynamic> jsonData = response;
      List<dynamic> articles = jsonData['articles'];
      for (var item in articles) {
        ArticalModel articalModel = ArticalModel.fromjson(item);
        articalsSportsList.add(articalModel);
        emit(GetSportsDataSuccessState());
      }
    } on ServerExcption catch (e) {
      emit(GetSportsDataFailureState(errorMessage: e.errorModel.errorMessage));
    }
    return articalsSportsList;
  }
}
