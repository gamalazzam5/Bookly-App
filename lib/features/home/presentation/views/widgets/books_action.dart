import 'package:bookly_app/core/functions/launch_url.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookEntity});

  final BookEntity bookEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomButton(text: '0.00€'),
        CustomButton(
          onPressed: () {
            if (bookEntity.previewLink == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('you can not launch this book')),
              );
            } else {
              launchTheUrl(bookEntity.previewLink!);
            }
          },
          backgroundColor: Color(0xFFEF8262),
          topLeft: 0,
          topRight: 16,
          bottomLeft: 0,
          bottomRight: 16,
          textColor: Colors.white,
          text: getText(bookEntity),
          fontSize: 16,
        ),
      ],
    );
  }
}

String getText(BookEntity bookEntity) {
  if (bookEntity.previewLink==null) {
    return 'Not Available';
  } else {
    return 'Preview';
  }
}
