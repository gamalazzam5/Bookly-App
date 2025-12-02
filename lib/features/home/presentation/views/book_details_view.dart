import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/book_details_view_app_bar.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookEntity});
final BookEntity bookEntity;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
 // BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category: widget.bookEntity.categories[0]);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const BookDetailsViewAppBar(),
      body: SafeArea(child: BookDetailsViewBody(bookEntity: widget.bookEntity,)),
    );
  }
}



