import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/repos/home_repo.dart';

part 'suggestions_state.dart';

class SuggestionsCubit extends Cubit<SuggestionsState> {
  final HomeRepo homeRepo;
  SuggestionsCubit(this.homeRepo) : super(SuggestionsInitial());

  Future<void> fetchSuggestions(String query) async {
    if (query.trim().isEmpty) return;

    emit(SuggestionsLoading());

    final result = await homeRepo.fetchSearchBooks(query: query);
    result.fold(
          (failure) => emit(SuggestionsFailure(failure.errMessage)),
          (books) => emit(SuggestionsSuccess(books.take(5).toList())),
    );
  }
}
