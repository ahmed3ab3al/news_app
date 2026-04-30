import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart' show AppCubit;
import 'package:news_app/cubit/news_states.dart';
import 'package:news_app/widgets/custom_news_tile.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      builder: (BuildContext context, state) {
        return ListView.separated(
          itemBuilder: (context, index) {
            return CustomNewsTile(
              articalModel: AppCubit.get(context).articalsGeneralList[index],
            );
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                height: .8,
                color: Colors.grey,
              ),
            );
          },

          itemCount: AppCubit.get(context).articalsGeneralList.length,
        );
      },
      listener: (BuildContext context, state) {},
    );
  }
}
