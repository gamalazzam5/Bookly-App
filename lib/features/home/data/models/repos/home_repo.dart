import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../book_model/book_model.dart';

abstract class HomeRepo {
 Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
 Future<Either<Failure,List<BookModel>>> fetchSimilarBooks({required String category});

}