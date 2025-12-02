import 'package:bookly_app/features/home/domain/usecases/fetch_newest_books_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/book_entity.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.newestBooksUseCase) : super(NewestBooksInitial());
  FetchNewestBooksUseCase newestBooksUseCase;

  Future<void> fetchNewestBooksUseCase({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(NewestBooksLoading());
    }
    emit(NewestBooksPaginationLoading());
    var result = await newestBooksUseCase.call(pageNumber);
    result.fold((failed) {
      if (pageNumber == 0) {
        emit(NewestBooksFailure(errMessage: failed.errMessage));
      } else {
        emit(NewestBooksPaginationFailure(errMessage: failed.errMessage));
      }
    }, (books) => emit(NewestBooksSuccess(books: books)));
  }
}
