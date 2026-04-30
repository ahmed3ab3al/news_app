import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/cubit/news_states.dart';
import 'package:news_app/widgets/custom_news_tile.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      builder: (BuildContext context, state) {
        return CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return CustomNewsTile(
                  articalModel: AppCubit.get(context).articalsSportsList[index],
                );
              }, childCount: AppCubit.get(context).articalsSportsList.length),
            ),
          ],
        );
      },
      listener: (BuildContext context, state) {},
    );
  }
}
