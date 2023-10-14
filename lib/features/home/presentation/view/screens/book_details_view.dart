import 'package:bookly_app/core/utils/styls.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_rating.dart';
import 'package:flutter/material.dart';

import '../widget/book_action_button.dart';
import '../widget/custom_book_details_app_bar.dart';
import '../widget/details_book_list_view.dart';
import '../widget/new_book_widget.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:width*0.15),
                child: const CustomNewBookWidget(),
              ),
              const SizedBox(height: 43.0,),
              Text('The Jungle Book',style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 8.0,),
              Opacity(
                opacity: 0.7,
                child: Text('Rudyard kipling',style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                ),),
              ),
              const SizedBox(height: 16.0,),
              BookRating(mainAxisAlignments: MainAxisAlignment.center,),
              const SizedBox( height: 16.0,),
              const BookActionButton(),
              const SizedBox( height: 24.0,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('You can also like',style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.bold,
                ),),
              ),
              const SizedBox( height: 16.0,),
              const DetailsBookListView(),
            ],
          ),
        ),
      )
    );
  }
}

