import 'package:flutter/material.dart';

import 'custom_search_text_fiels.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomSearchTextField()
        ],
      ),
    );
  }
}
