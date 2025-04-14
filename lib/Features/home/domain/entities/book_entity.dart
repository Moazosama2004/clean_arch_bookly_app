class BookEntity {
  final String image;
  final String title;
  final String authorName;
  final num price;
  final num rating;
  final num rateCount;

  const BookEntity({
    required this.title,
    required this.authorName,
    required this.price,
    required this.rateCount,
    required this.image,
    required this.rating,
  });
}
