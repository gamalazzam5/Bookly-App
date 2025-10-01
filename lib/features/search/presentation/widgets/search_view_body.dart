import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/views/widgets/book_list_view_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const CustomSearchTextField(),
          const SizedBox(height: 16,),
          Text('Search Result',style: TextStyles.textStyle18,),
          const SizedBox(height: 16,),
          const  SearchResultListView()
        ],
      ),
    );
  }
}
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(

          padding: EdgeInsets.zero,
          itemCount: 10 ,
          itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: BookListViewItem(),
            );
          }),
    );
  }
}



