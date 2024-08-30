import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingItem extends StatelessWidget {
  const CustomLoadingItem(
      {super.key, required this.width, required this.height, this.circle = 15});
  final double width;
  final double height;
  final double circle;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: ColorManager.black,
        highlightColor: ColorManager.white,
        child: Container(
          padding: const EdgeInsetsDirectional.all(20),
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: ColorManager.black.withOpacity(0.09),
            borderRadius: BorderRadius.all(Radius.circular(circle)),
          ),
        ),
      ),
    );
  }
}
