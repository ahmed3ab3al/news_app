import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/api/api_consumer.dart';
import 'package:news_app/core/api/end_points.dart';
import 'package:news_app/core/errors/exceptions.dart';
import 'package:news_app/cubit/news_states.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/modules/business/business_screen.dart';
import 'package:news_app/modules/science/science_screen.dart';
import 'package:news_app/modules/sports/sports_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit({required this.api}) : super(AppInitialStates());
  final ApiConsumer api;

  static AppCubit get(BuildContext context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<ArticalModel> articalsGeneralList = [];

  List<Widget> screens = [BusinessScreen(), ScienceScreen(), SportsScreen()];
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
    emit(ChangeBottomNavState());
  }

  Future<List<ArticalModel>> getGeneralData() async {
    try {
      emit(GetGeneralDataLoadingState());
      final response = await api.get(
        EndPoints.newsData,
        queryParameters: {
          ApiKeys.countryKey: ApiKeys.countryValue,
          ApiKeys.categoryKey: ApiKeys.categorySportsValue,
          ApiKeys.apiKey: ApiKeys.apiKeyValue,
        },
      );
      emit(GetGeneralDataSuccessState());

      Map<String, dynamic> jsonData = response;
      List<dynamic> articles = jsonData['articles'];
      for (var item in articles) {
        ArticalModel articalModel = ArticalModel.fromjson(item);
        articalsGeneralList.add(articalModel);
      }
    } on DioException catch (e) {
      handleDioException(e);
      emit(GetGeneralDataFaliureState(errorMessage: e.response!.data));
    }
    return articalsGeneralList;
  }
}
