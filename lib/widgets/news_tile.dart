import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              height: 200,
              articleModel.image ??
                  'https://image.cnbcfm.com/api/v1/image/107370521-17073441702024-02-07t011117z_181388254_rc25t5a5jhqn_rtrmadp_0_ny-cmnty-bancp-moody-s.jpeg?v=1707344314&w=1920&h=1080',
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subtitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
