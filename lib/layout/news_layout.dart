import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/api/dio_consumer.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/cubit/news_states.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          AppCubit(api: DioConsumer(dio: Dio()))..getGeneralData(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('News App'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, size: 35),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.brightness_4_outlined, size: 35),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: AppCubit.get(context).bottomNavItem,
              currentIndex: AppCubit.get(context).currentIndex,
              onTap: (index) => AppCubit.get(context).changeBottomNav(index),
            ),
            body: AppCubit.get(
              context,
            ).screens[AppCubit.get(context).currentIndex],
          );
        },
      ),
    );
  }
}
