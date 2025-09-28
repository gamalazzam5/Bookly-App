import 'package:flutter/material.dart';

import 'book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10 ,
        itemBuilder: (_,index){
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: BookListViewItem(),
          );
        });
  }
}