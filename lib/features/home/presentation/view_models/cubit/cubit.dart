import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/api/api_helper.dart';
import 'package:news_app/core/api/end_points.dart';
import 'package:news_app/core/errors/exception.dart';
import 'package:news_app/features/business/presentation/views/business_screen_view.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/states.dart';
import 'package:news_app/features/science/presentation/views/science_screen_view.dart';
import 'package:news_app/features/sports/presentation/views/sports_screen_view.dart';

class NewsCubit extends Cubit<NewsStates> {

  final ApiConsumer api;

  NewsCubit(this.api) : super(InitialState());

  static NewsCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    if (index == 1) {
      getSportsData();
    }
    else if (index == 2) {
      getScienceData();
    }
    emit(ChangeBottomNavState());
  }
  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: 'Business',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: 'Sports',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.science),
      label: 'Science',
    ),
  ];


  List<dynamic> business=[];

  getBusinessData() async{
    try {
      emit(GetBusinessLoadingState());
      final response= await api.get(
        EndPoints.topHeadlines,
        queryParameters: {
        //  ApiKeys.countryKey:'eg',
          ApiKeys.categoryKey:ApiKeys.business,
          ApiKeys.apiKey:EndPoints.apiKey
        }
      );
      business = response['articles'];
      emit(GetBusinessSuccessState());
    }on ServerException catch(e){
      emit(GetBusinessErrorState(error: e.errorModel.message));
    }
  }

  List<dynamic> sports=[];

  getSportsData() async{
    emit(GetSportsLoadingState());
    if(sports.isEmpty){
      try {

        final response= await api.get(
            EndPoints.topHeadlines,
            queryParameters: {
            //  ApiKeys.countryKey:'eg',
              ApiKeys.categoryKey:ApiKeys.sports,
              ApiKeys.apiKey:EndPoints.apiKey
            }
        );
        sports = response['articles'];
        emit(GetSportsSuccessState());
      }on ServerException catch(e){
        emit(GetSportsErrorState(error: e.errorModel.message));
      }
    }else{
      emit(GetSportsSuccessState());
    }

  }

  List<dynamic> science=[];

  getScienceData() async{
    emit(GetScienceLoadingState());
if(science.isEmpty){
    try {
      final response= await api.get(
          EndPoints.topHeadlines,
          queryParameters: {
          //  ApiKeys.countryKey:'eg',
            ApiKeys.categoryKey:ApiKeys.science,
            ApiKeys.apiKey:EndPoints.apiKey
          }
      );
      science = response['articles'];
      emit(GetScienceSuccessState());
    }on ServerException catch(e){
      emit(GetScienceErrorState(error: e.errorModel.message));
    }
  } else{
    emit(GetScienceSuccessState());
  }
}


bool isDark = false;

  void changeAppMode() {
    isDark = !isDark;
    emit(ChangeAppMode());
  }
  }
