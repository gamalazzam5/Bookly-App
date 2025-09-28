import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: CustomBookImage(),
        ),
        const SizedBox(height: 24),
        Text('The Jungle Book', style: TextStyles.textStyle30),
        const SizedBox(height: 6),

        Opacity(
          opacity: .7,
          child: Text('Rudyard Kipling', style: TextStyles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          )),
        ),
      ],
    );
  }
}
