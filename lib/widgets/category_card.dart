import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Container(
        width: 220,
        height: 120,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(category.image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          category.categoryName,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
