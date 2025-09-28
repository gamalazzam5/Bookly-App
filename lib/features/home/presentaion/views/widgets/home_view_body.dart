import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            CustomAppBar(),
            FeaturedBooksListView(),
            SizedBox(height: 50,),
            Text('Best Seller',style: TextStyles.textStyle18),
            const SizedBox(height: 20,),
            BestSellerListViewItem(),
          ]),
    );
  }
}





