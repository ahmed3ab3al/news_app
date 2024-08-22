import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/cubit.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/states.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('NEWS APP'),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                  items: NewsCubit.get(context).bottomItems,
                  currentIndex: NewsCubit.get(context).currentIndex,
                  onTap: (index) {
                    NewsCubit.get(context).changeBottomNav(index);
                  }),
              body: NewsCubit.get(context).screens[NewsCubit.get(context).currentIndex],

          );
        },
      ),
    );
  }
}
