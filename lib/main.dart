import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/core/api/dio_helper.dart';
import 'package:news_app/core/bloc/bloc_observer.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/cubit.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/states.dart';
import 'package:news_app/features/home/presentation/views/home_screen_view.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(DioConsumer(dio: Dio()))..getBusinessData(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return MaterialApp(
            themeMode: NewsCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: TextTheme(
                bodyMedium: Styles.bodyLight,
              ),
              appBarTheme: AppBarTheme(
                  titleTextStyle: Styles.appBarLight,
                  backgroundColor: ColorManager.white,
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarIconBrightness: Brightness.dark,
                      statusBarColor: ColorManager.white),
                  iconTheme: Styles.searchIconLight
              ),
              bottomNavigationBarTheme: Styles.bottomNavBarLight,
              scaffoldBackgroundColor: ColorManager.white,
            ),
            darkTheme: ThemeData(
              textTheme: TextTheme(
                bodyMedium: Styles.bodyDark,
              ),
              scaffoldBackgroundColor: HexColor('333739'),
              appBarTheme: AppBarTheme(
                  titleTextStyle: Styles.appBarDark,
                  backgroundColor: HexColor('333739'),
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarIconBrightness: Brightness.light,
                      statusBarColor: HexColor('333739')),
                  iconTheme: Styles.searchIconDark
              ),
              bottomNavigationBarTheme: Styles.bottomNavBarDark,
            ),
            home: const HomeScreenView(),
          );
        },
      ),
    );
  }
}
