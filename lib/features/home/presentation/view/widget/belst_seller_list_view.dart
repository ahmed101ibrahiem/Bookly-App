import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key,required this.books}) : super(key: key);

  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:  NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return
            Padding(
             padding:  EdgeInsets.symmetric(vertical: 10.0),
             child:  BestSellerListViewItem(imgUrl: books[index].image!),
           );

      },
    );
  }
}
