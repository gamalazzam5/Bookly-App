import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/usecases/fetch_featured_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());
  FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooksUseCase({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FeaturedBooksLoading());
    }
    emit(FeaturedBooksPaginationLoading());
    var result = await featuredBooksUseCase.call(pageNumber);
    result.fold((failed) {
      if (pageNumber == 0) {
        emit(FeaturedBooksFailure(errMessage: failed.errMessage));
      } else {
        emit(FeaturedBooksPaginationFailure(errMessage: failed.errMessage));
      }
    }, (books) => emit(FeaturedBooksSuccess(books: books)));
  }
}
