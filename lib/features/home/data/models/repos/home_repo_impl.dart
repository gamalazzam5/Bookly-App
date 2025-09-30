import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl  implements HomeRepo{
  ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
    try{
    var data = await apiService.get(endPoint: 'volumes?q=subject:programming&Sorting=newest&Filtering=free-ebooks');
    List<BookModel> books = [];
    for(var item in data['items']){
      books.add(BookModel.fromJson(item));
    }
    return right(books);
    } catch (e){
      if(e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }else{
        return left(ServerFailure(e.toString()));
      }
    }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }


}