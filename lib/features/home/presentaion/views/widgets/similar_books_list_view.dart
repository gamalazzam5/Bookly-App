import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .12,
      child: Padding(
        padding: EdgeInsets.only(left: 16),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(),
            );
          },
        ),
      ),
    );
  }
}
