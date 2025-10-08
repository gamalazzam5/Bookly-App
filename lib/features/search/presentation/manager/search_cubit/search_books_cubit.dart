import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSearchBook({required String query}) async {
    if (query.trim().isEmpty) return;
    emit(SearchBooksLoading());
    var result = await homeRepo.fetchSearchBooks(query: query);
    result.fold(
      (failure) {
        emit(SearchBooksFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(SearchBooksSuccess(books: books));
      },
    );
  }
}
