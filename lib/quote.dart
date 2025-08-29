class Quote {
  final String text;
  final String author;
  int likes;
  final DateTime createdAt;

  Quote({
    required this.text,
    required this.author,
    this.likes = 0,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();
}
