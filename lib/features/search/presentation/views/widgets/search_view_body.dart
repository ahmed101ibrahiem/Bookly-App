import 'package:bookly_app/core/utils/styls.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_fiels.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16.0,),
          Text('Search Result: ',style: Styles.textStyle16,),
          SizedBox(height: 8.0,),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
