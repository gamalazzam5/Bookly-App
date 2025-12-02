import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/domain/repositories/home_repo.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSearchBook({required String query}) async {
    // if (query.trim().isEmpty) return;
    // emit(SearchBooksLoading());
    // var result = await homeRepo.fetchSearchBooks(query: query);
    // result.fold(
    //   (failure) {
    //     emit(SearchBooksFailure(errMessage: failure.errMessage));
    //   },
    //   (books) {
    //     emit(SearchBooksSuccess(books: books));
    //   },
    // );
  }
}
