import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/cubit/news_states.dart';
import 'package:news_app/widgets/custom_news_tile.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        return ListView.separated(
          itemBuilder: (context, index) {
            return CustomNewsTile(
              articalModel: AppCubit.get(context).articalsBusinessList[index],
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

          itemCount: AppCubit.get(context).articalsBusinessList.length,
        );
      },
    );
  }
}
