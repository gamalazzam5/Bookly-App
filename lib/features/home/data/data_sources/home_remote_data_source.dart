import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/functions/save_books.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber =0});
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber =0});
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber =0}) async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q= programming&filtering=free-ebooks&startIndex=${pageNumber*10}',
      );
      List<BookEntity> books = getBooksList(data);
      saveData(books, kFeaturedBox);
      debugPrint("📚 Featured books fetched: ${books.length}");
      return books;
    } catch (e) {
      debugPrint("❌ Error fetching featured books: $e");
      rethrow;
    }
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber = 0}) async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=programming&filter=free-ebooks&orderBy=newest&startIndex=${pageNumber*10}',
      );
      List<BookEntity> books = getBooksList(data);
      saveData(books, kNewestBox);
      debugPrint("🆕 Newest books fetched: ${books.length}");
      return books;
    } catch (e) {
      debugPrint("❌ Error fetching newest books: $e");
      rethrow;
    }
  }
}

List<BookEntity> getBooksList(Map<String, dynamic> data) {
  List<BookEntity> books = [];
  if (data['items'] != null) {
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
  } else {
    debugPrint("⚠️ No items found in API response");
  }
  return books;
}
