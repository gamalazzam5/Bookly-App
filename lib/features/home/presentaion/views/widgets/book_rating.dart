import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star,color: Color(0xFFFFDD4F),),
        const SizedBox(width: 6.3,),
        Text('4.8',style: TextStyles.textStyle16,),
        const SizedBox(width: 5,),

        Text("(245)",style: TextStyles.textStyle14.copyWith(color: Color(0xFF707070)),)
      ],
    );
  }
}