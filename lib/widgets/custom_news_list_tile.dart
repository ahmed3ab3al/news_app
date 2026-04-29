import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/widgets/custom_news_tile.dart';

class CustomListNews extends StatelessWidget {
  const CustomListNews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      builder: (BuildContext context, state) {
        return CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return CustomNewsTile(
                  articalModel: AppCubit.get(context).articalsGeneralList[index],
                );
              }),
            ),
          ],
        );
      },
      listener: (BuildContext context, state) {},
    );
  }
}
