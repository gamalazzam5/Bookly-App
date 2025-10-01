import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: CustomBookImage( imageUrl: 'https://img-c.udemycdn.com/user/50x50/91236184_0105.jpg',),
        ),
        const SizedBox(height: 24),
        Text('The Jungle Book', style: TextStyles.textStyle30),
        const SizedBox(height: 6),

        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: TextStyles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 16),
        BookRating(mainAxisAlignment: MainAxisAlignment.center,rating: 1,count: 20,),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
