import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';

class CustomNewsTile extends StatelessWidget {
  const CustomNewsTile({super.key, required this.articalModel});
  final ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              articalModel.image ??
                  'https://www.shutterstock.com/image-illustration/3d-rendering-news-background-perfect-600w-1722423010.jpg',
              fit: BoxFit.cover,
              width: 120,
              height: 120,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: SizedBox(
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Expanded(
                    child: Text(
                      articalModel.title,
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    articalModel.date!,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
