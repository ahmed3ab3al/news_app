import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/cubit.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/states.dart';

import '../../../../core/widgets/custom_build_news_item.dart';
import '../../../../core/widgets/custom_separator.dart';
import '../../../business/presentation/views/widgets/get_data_loading.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return NewsCubit.get(context).science.isEmpty? const GetLoading() : ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>  BuildNewsItem(article: NewsCubit.get(context).science[index],
            image: 'https://yt3.googleusercontent.com/hR2WSeanbDOeUmelno7k5lotuwtCIr-luzZyR1O9BEkD9GZxrfVRJoXcTlFUBEBru4EP4CuytPg=s900-c-k-c0x00ffffff-no-rj',),
            separatorBuilder: (context, index) => const CustomSeparator(),
            itemCount: NewsCubit.get(context).science.length);
      },
    );
  }
}
