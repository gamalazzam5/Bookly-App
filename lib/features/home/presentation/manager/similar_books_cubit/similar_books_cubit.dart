import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';
import '../../../domain/repositories/home_repo.dart';


part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks( {required String category}) async{
    // emit(SimilarBooksLoading());
    // var result = await homeRepo.fetchSimilarBooks(category: category);
    // result.fold((failure){
    //   emit(SimilarBooksFailure(errMessage: failure.errMessage));
    // }, (books){
    //   emit(SimilarBooksSuccess(books: books),);
    // });
  }
}
