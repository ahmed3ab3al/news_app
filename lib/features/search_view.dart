import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/widgets/custom_text_form_field.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/cubit.dart';

import '../core/widgets/custom_build_news_item.dart';
import '../core/widgets/custom_separator.dart';
import 'business/presentation/views/widgets/get_data_loading.dart';
import 'home/presentation/view_models/cubit/states.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            scrolledUnderElevation: 0,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: CustomTextFormFiled(
                    onChanged: (value) {
                      NewsCubit.get(context).getSearch(value);
                    },
                    updateBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    customController: searchController,
                    prefix: Icons.search,
                    label: 'Search',
                    type: TextInputType.text),
              ),
              Expanded(
                child: NewsCubit.get(context).search.isEmpty? const GetLoading() :  ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) => const CustomSeparator(),
                    itemBuilder: (context, index) => BuildNewsItem(
                          article: NewsCubit.get(context).search[index],
                      image: 'https://st.depositphotos.com/1001877/4879/i/450/depositphotos_48796089-stock-photo-news-concept-newspaper-sphere-three.jpg',
                        ),
                    itemCount: NewsCubit.get(context).search.length),
              )
            ],
          ),
        );
      },
    );
  }
}
