class BookEntity {
  final String bookId;
  final String? image;
  final String title;
  final String? authorName;
  final num? price;
  final num? rating;

  const BookEntity({
    required this.bookId,
    required this.title,
    required this.authorName,
    required this.price,
    required this.image,
    required this.rating,
  });
}
