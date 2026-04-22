import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/cubit/news_states.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('News App'),
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: NewsCubit.get(context).bottomNavItem,
              currentIndex: NewsCubit.get(context).currentIndex,
              onTap: (index) => NewsCubit.get(context).changeBottomNav(index),
            ),
            body: NewsCubit.get(
              context,
            ).screens[NewsCubit.get(context).currentIndex],
          );
        },
      ),
    );
  }
}
