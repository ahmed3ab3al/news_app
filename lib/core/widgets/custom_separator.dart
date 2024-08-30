import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';

class CustomSeparator extends StatelessWidget {
  const CustomSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20),
      child: Container(
          height: 1,
          color:ColorManager.grey,
          width: double.infinity),
    );
  }
}
