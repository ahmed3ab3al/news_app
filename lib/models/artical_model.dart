class ArticalModel {
  final String? image;
  final String? date;
  final String title;
  final String? url;

  ArticalModel({required this.image, required this.date, required this.title, this.url});

  factory ArticalModel.fromjson(Map<String, dynamic> jsonData) {
    return ArticalModel(
      image: jsonData['urlToImage'],
      date: jsonData['publishedAt'],
      title: jsonData['title'],
      url: jsonData['url']
    );
  }
}
