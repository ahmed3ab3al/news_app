import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/cubit.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/states.dart';

import '../../../search_view.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('NEWS APP'),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const SearchView()));
                  },
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {
                    NewsCubit.get(context).changeAppMode();
                  },
                  icon: const Icon(Icons.brightness_4_outlined),
                ),
              ],
              scrolledUnderElevation: 0,
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
    );
  }
}
