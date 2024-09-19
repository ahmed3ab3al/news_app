import 'package:flutter/material.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';


class BuildNewsItem extends StatelessWidget {
  final Uri? url;
  final Map article;
  final String? image;

   const BuildNewsItem({
    super.key, required this.article, this.image, this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
      await _launchUrl();
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          //  image!
                            article['urlToImage'] ?? image
                        ),
                        fit: BoxFit.cover
                    )
                )
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: SizedBox(
                width: 120,
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                          article['title'],
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis
                      ),
                    ),
                    Text(article['publishedAt'],
                        style: Styles.date
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(url??Uri.parse(article['url']))) {
      throw Exception('Could not launch $url');
    }
  }
}