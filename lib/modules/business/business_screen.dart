import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/cubit/news_states.dart';
import 'package:news_app/widgets/custom_list_view.dart';
import 'package:news_app/widgets/custom_news_tile.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        return CustomListViewNews(
          AppCubit.get(context).articalsBusinessList,
          image:
              'https://www.syracuse.com/resizer/v2/RYHGZOLH25BOVBQIT744S7XX4Q.png?auth=d60d8b86c95a59727132172928b6dafcb326e41ac41e8353bce0c9c4e7c607c2',
        );
      },
    );
  }
}
