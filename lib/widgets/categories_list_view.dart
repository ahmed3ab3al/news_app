import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> category = const [
    CategoryModel(
        image: 'assets/images/business.avif', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/images/entertaiment.avif',
        categoryName: 'Entertainment'),
    CategoryModel(
        image: 'assets/images/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/images/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/images/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/images/sports.avif', categoryName: 'Sports'),
    CategoryModel(image: 'assets/images/general.avif', categoryName: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CategoryCard(
            category: category[index],
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        separatorBuilder: (context, index) => const SizedBox(
          width: 16,
        ),
      ),
    );
  }
}
