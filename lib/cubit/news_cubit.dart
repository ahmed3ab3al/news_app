import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/api/api_consumer.dart';
import 'package:news_app/core/api/end_points.dart';
import 'package:news_app/cubit/news_states.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit({required this.api}) : super(NewsInitialStates());
  final ApiConsumer api;

  static NewsCubit get(BuildContext context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomNavItem = [
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

  void getNews() {
    api.get(EndPoints.newsData, queryParameters: {});
  }
}
