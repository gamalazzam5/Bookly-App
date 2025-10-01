import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>GoRouter.of(context).push(AppRoutePaths.bookDetailsView),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration:   BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.5,
                      child: Text('Harry Potter and the Goblet of Fire',style: TextStyles.textStyle20.copyWith(fontFamily: kGtSectraFine),maxLines: 2,overflow: TextOverflow.ellipsis,),)
                    ,const SizedBox(height: 3,),
                    Text('J.K Rowling',style: TextStyles.textStyle14,),
                    const SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('19.99 €',style: TextStyles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                        BookRating(

                        )
                      ],
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}

