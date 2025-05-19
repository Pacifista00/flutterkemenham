class NewsItem {
  final String title;
  final String date;
  final String imagePath;
  final String description;
  final String category;

  NewsItem({
    required this.imagePath,
    required this.date,
    required this.category,
    required this.title,
    required this.description,
  });

  factory NewsItem.fromJson(Map<String, dynamic> json) {
    return NewsItem(
      imagePath: json['image_path'], // sesuaikan dengan key dari API kamu
      date: json['date'],
      category: json['category'],
      title: json['title'],
      description: json['description'],
    );
  }
}
