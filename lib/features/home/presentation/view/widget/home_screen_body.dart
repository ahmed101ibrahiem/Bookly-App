import 'package:bookly_app/core/utils/styls.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_bloc_builder.dart';
import 'custom_app_bar.dart';
import 'custom_book_list_builder.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomAppBar(),
              ),
              CustomBookListBuilder(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListBuilder(),
          ),
        ),
      ],
    );
  }
}

