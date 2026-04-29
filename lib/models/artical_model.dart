class ArticalModel {
  final String? image;
  final String? date;
  final String title;

  ArticalModel({required this.image, required this.date, required this.title});

  factory ArticalModel.fromjson(Map<String, dynamic> jsonData) {
    return ArticalModel(
      image: jsonData['urlToImage'],
      date: jsonData['publishedAt'],
      title: jsonData['title'],
    );
  }
}
