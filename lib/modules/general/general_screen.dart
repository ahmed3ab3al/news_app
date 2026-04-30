import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart' show AppCubit;
import 'package:news_app/cubit/news_states.dart';
import 'package:news_app/widgets/custom_list_view.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      builder: (BuildContext context, state) {
        return CustomListViewNews(
          AppCubit.get(context).articalsGeneralList,
          image:
              'https://media.istockphoto.com/id/466155576/photo/news-concept.jpg?s=612x612&w=0&k=20&c=kBmC8xuqMeCsWFUzMlAOyxZqkXg035BdxBC8vr6LpVo=',
        );
      },
      listener: (BuildContext context, state) {},
    );
  }
}
