import 'package:bookly_app/core/functions/launch_url.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomButton(text: '0.00€'),
        CustomButton(
          onPressed: () {
            if (bookModel.volumeInfo.previewLink == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('you can not launch this book')),
              );
            } else {
              launchTheUrl(bookModel.volumeInfo.previewLink!);
            }
          },
          backgroundColor: Color(0xFFEF8262),
          topLeft: 0,
          topRight: 16,
          bottomLeft: 0,
          bottomRight: 16,
          textColor: Colors.white,
          text: getText(bookModel),
          fontSize: 16,
        ),
      ],
    );
  }
}

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Available';
  } else {
    return 'Preview';
  }
}
