import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/validators.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/cubit/news_states.dart';
import 'package:news_app/widgets/custom_list_view.dart';
import 'package:news_app/widgets/custom_text_field.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  CustomField(
                    controller: controller,
                    validator: (value) =>
                        AppValidators.validateUsername(controller.text),
                    border: OutlineInputBorder(),
                    type: TextInputType.text,
                    label: 'Search',
                    prefixIcon: Icons.search,
                    floatingLabelStyle: TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    action: TextInputAction.search,
                    onchange: (value) {
                      // AppCubit.get(context).getSearch(value);
                    },
                    onSubmited: (value) {
                      if (formKey.currentState!.validate()) {
                        AppCubit.get(context).getSearch(value);
                      }
                    },
                  ),
                  SizedBox(height: 15),
                  Expanded(
                    child: CustomListViewNews(
                      image: '',
                      AppCubit.get(context).articalsSearchList,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
