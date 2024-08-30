import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/cubit.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/states.dart';
import '../../../../core/widgets/custom_build_news_item.dart';
import '../../../../core/widgets/custom_separator.dart';
import '../../../business/presentation/views/widgets/get_data_loading.dart';
class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return NewsCubit.get(context).science.isEmpty  ? const GetLoading() : ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>  BuildNewsItem(article: NewsCubit.get(context).sports[index],
            image: 'https://as2.ftcdn.net/v2/jpg/01/58/91/07/1000_F_158910791_SgNhFoYcuYYUKpuq2gVmLEZPiZkyDwhV.jpg',),
            separatorBuilder: (context, index) => const CustomSeparator(),
            itemCount: NewsCubit.get(context).sports.length);
      },
    );
  }
}
