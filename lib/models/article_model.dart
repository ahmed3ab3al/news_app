class ArticleModel {
  final String? image;
  final String? title;
  final String? subtitle;
  ArticleModel({
    required this.image,
    required this.subtitle,
    required this.title,
  });
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'],
      subtitle: json['description'],
      title: json['title'],
    );
  }
}