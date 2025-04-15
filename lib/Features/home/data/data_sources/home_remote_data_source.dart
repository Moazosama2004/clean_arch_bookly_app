import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/core/utils/api_service.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService _apiService;

  HomeRemoteDataSourceImpl(this._apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await _apiService.get(
        endPoint: 'volumes?q=programming&Filtering=free-books');

    List<BookEntity> books = [];

    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await _apiService.get(
        endPoint: 'volumes?q=programming&Filtering=free-books&Sorting=newest');

    List<BookEntity> books = [];

    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
}
