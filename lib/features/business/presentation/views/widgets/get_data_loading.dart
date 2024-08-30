import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/cubit.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/states.dart';
import '../../../../../core/widgets/custom_loading_item.dart';


class GetLoading extends StatelessWidget {
  const GetLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.separated(
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                CustomLoadingItem(
                  width: 120,
                  height: 120,
                  circle: 10,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomLoadingItem(width: 120, height: 10),
                    SizedBox(
                      height: 80,
                    ),
                    CustomLoadingItem(width: 100, height: 8),
                  ],
                )
              ],
            ),
          ),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Container(
                height: 1,
                color: ColorManager.grey,
                width: double.infinity),
          ),
          itemCount: 6,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        );
      },
    );
  }
}
