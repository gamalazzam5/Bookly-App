import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomButton(
          text: '19.19€',
        ),
        CustomButton(
          backgroundColor: Color(0xFFEF8262),
          topLeft: 0,
          topRight: 16,
          bottomLeft: 0,
          bottomRight: 16,
          textColor: Colors.white,
          text: 'Free Preview',
          fontSize: 16,
        )
      ],
    );
  }
}