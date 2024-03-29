import 'package:flutter/material.dart';

import '../../../../home/presentation/view/widget/best_seller_list_view_item.dart';


class SearchResultListView extends StatelessWidget {
   SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return
           Padding(
            padding:  const EdgeInsets.symmetric(vertical: 10.0),
            child:  BestSellerListViewItem(),
          );

      },
    );
  }
}
