part of 'suggestions_cubit.dart';

sealed class SuggestionsState extends Equatable {
  const SuggestionsState();

  @override
  List<Object> get props => [];
}

final class SuggestionsInitial extends SuggestionsState {}

final class SuggestionsLoading extends SuggestionsState {}

final class SuggestionsFailure extends SuggestionsState {
  final String errMessage;
  const SuggestionsFailure(this.errMessage);

  @override
  List<Object> get props => [errMessage];
}

final class SuggestionsSuccess extends SuggestionsState {
  final List<BookEntity> suggestions;
  const SuggestionsSuccess(this.suggestions);

  @override
  List<Object> get props => [suggestions];
}
