import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widgets/custom_news_tile.dart';

class CustomListViewNews extends StatelessWidget {
  const CustomListViewNews(this.modelList, {super.key, required this.image});
  final String image;
  final List<ArticalModel> modelList;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return CustomNewsTile(image: image, articalModel: modelList[index]);
      },
      separatorBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            width: double.infinity,
            height: .8,
            color: Colors.grey,
          ),
        );
      },
      itemCount: modelList.length,
    );
  }
}
