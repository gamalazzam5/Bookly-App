import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookEntity});
final BookEntity bookEntity;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .25),
            child: CustomBookImage( imageUrl:bookEntity.image??''),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(bookEntity.title, style: TextStyles.textStyle30,textAlign: TextAlign.center,),
          ),
          const SizedBox(height: 6),

          Opacity(
            opacity: .7,
            child: Text(
              bookEntity.authorName??'',
              style: TextStyles.textStyle20.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 16),
          BookRating(mainAxisAlignment: MainAxisAlignment.center,rating:bookEntity.rating??0,count: bookEntity.count??0,),
          const SizedBox(height: 37),
           BooksAction(bookEntity: bookEntity,),
        ],
      ),
    );
  }
}
