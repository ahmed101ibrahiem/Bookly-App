import 'package:bookly_app/core/utils/asset_data.dart';
import 'package:bookly_app/core/utils/styls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'custom_book_list.dart';
import 'new_book_widget.dart';


class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          CustomAppBar(),
           CustomBookListH(),
          SizedBox(height: 50,),
          Text('Best Seller',style:Styles.textStyle18 ,),
          BestSellerListViewItem()

        ],
      ),
    );
  }
}

