import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/widgets/custom_build_news_item.dart';
import 'package:news_app/core/widgets/custom_separator.dart';
import 'package:news_app/features/business/presentation/views/widgets/get_data_loading.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/cubit.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/states.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return NewsCubit.get(context).business.isEmpty ? const GetLoading() : ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>  BuildNewsItem(article: NewsCubit.get(context).business[index],
            image: 'https://i.scdn.co/image/062892087c06b8ae0454dde50fff3368a16f68db', ),
            separatorBuilder: (context, index) => const CustomSeparator(),
            itemCount: NewsCubit.get(context).business.length);
      },
    );
  }
}



