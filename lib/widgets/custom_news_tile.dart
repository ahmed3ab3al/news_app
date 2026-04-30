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
                  'https://cdn.horizons.dz/wp-content/uploads/2025/08/breaking-news.jpg',
              fit: BoxFit.fill,
              width: 130,
              height: 130,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: SizedBox(
              height: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Expanded(
                    child: Text(
                      articalModel.title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
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
