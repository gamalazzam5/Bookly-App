import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(
            controller: _controller,
            onPressed: () {
              final query = _controller.text;
              BlocProvider.of<SearchBooksCubit>(
                context,
              ).fetchSearchBook(query: query);
            },
          ),
          const SizedBox(height: 16),
          Text('Search Result', style: TextStyles.textStyle18),
          const SizedBox(height: 16),
          BlocBuilder<SearchBooksCubit, SearchBooksState>(
            builder: (_, state) {
              if (state is SearchBooksLoading) {
                return const CustomLoadingIndicator();
              } else if (state is SearchBooksFailure) {
                return CustomErrorWidget(errMessage: state.errMessage);
              } else if (state is SearchBooksSuccess) {
                return SearchResultListView(books: state.books);
              } else {
                return Center(child: Text('Start typing to search...'));
              }
            },
          ),
        ],
      ),
    );
  }
}
