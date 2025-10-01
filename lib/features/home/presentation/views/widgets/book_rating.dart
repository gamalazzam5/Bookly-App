import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});
  final double rating;
  final int count;

 final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ,
      children: [
        const Icon(Icons.star,color: Color(0xFFFFDD4F),size: 14,),
        const SizedBox(width: 6.3,),
        Text(rating.toString(),style: TextStyles.textStyle16,),
        const SizedBox(width: 5,),

        Opacity(
            opacity: .5,
            child: Text("($count)",style: TextStyles.textStyle14.copyWith(fontWeight: FontWeight.w600),))
      ],
    );
  }
}