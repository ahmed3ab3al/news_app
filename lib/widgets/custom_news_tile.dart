import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomNewsTile extends StatelessWidget {
  const CustomNewsTile({
    super.key,
    required this.articalModel,
    required this.image,
    this.url,
  });
  final ArticalModel articalModel;
  final String image;
  final Uri? url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchUrl();
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                articalModel.image ?? image,
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
                        style: Theme.of(context).textTheme.bodyMedium,
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
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(articalModel.url!))) {
      throw Exception('Could not launch ${articalModel.url}');
    }
  }
}
