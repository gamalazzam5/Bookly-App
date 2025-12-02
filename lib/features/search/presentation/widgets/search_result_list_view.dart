import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
   const SearchResultListView({super.key, required this.books});
final List<BookEntity>books;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(

          padding: EdgeInsets.zero,
          itemCount: books.length ,
          itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0),

              child:BookListViewItem(bookEntity: books[index],),
            );
          }),
    );
  }
}
