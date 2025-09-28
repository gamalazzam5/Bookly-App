
import 'package:bookly_app/features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'You can also like',
            style: TextStyles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        SizedBox(height: 10),
        SimilarBooksListView(),
      ],
    );
  }
}