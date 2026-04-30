import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/cubit/news_states.dart';
import 'package:news_app/widgets/custom_list_view.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, state) {},

      builder: (BuildContext context, state) {
        return CustomListViewNews(
          AppCubit.get(context).articalsScienceList,
          image:
              'https://s3.eu-west-2.amazonaws.com/lifescience.bucket/wp-content/uploads/2026/04/05160252/Life-Science-Weekly-Updates-Master-1024x640.jpg',
        );
      },
    );
  }
}
