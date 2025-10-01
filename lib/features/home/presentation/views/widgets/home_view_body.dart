import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: CustomAppBar(),
                ),
                FeaturedBooksListView(),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text('Best Seller',style: TextStyles.textStyle18),
                ),
                const SizedBox(height: 20,),
              ]),),
        SliverFillRemaining(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: BestSellerListView(),
        ),)
      ],
    );
  }
}







