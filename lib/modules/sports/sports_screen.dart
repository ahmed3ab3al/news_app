import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/cubit/news_states.dart';
import 'package:news_app/widgets/custom_list_view.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        return CustomListViewNews(
          image:
              'https://t3.ftcdn.net/jpg/19/18/76/74/360_F_1918767416_dcMOeKquZo9UaPYMlRWB4fa3zC63hzHK.jpg',
          AppCubit.get(context).articalsSportsList,
        );
      },
    );
  }
}
