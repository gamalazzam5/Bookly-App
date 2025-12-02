part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();
  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState{}
final class FeaturedBooksPaginationLoading extends FeaturedBooksState{}
final class FeaturedBooksFailure extends FeaturedBooksState{
  final String errMessage;

  const FeaturedBooksFailure({required this.errMessage});
}
final class FeaturedBooksPaginationFailure extends FeaturedBooksState{
  final String errMessage;

  const FeaturedBooksPaginationFailure({required this.errMessage});
}
final class FeaturedBooksSuccess extends FeaturedBooksState{
 final List<BookEntity> books;

 const FeaturedBooksSuccess({required this.books});
}
