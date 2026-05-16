import 'package:flutter/material.dart';
import 'package:news_app/core/validators.dart';
import 'package:news_app/widgets/custom_text_field.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
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
                onchange: (value){

                },
                onSubmited: (value) {
                  if (formKey.currentState!.validate()) {
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
