import 'package:bookly_app/core/utils/styls.dart';
import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_rating.dart';
import 'package:flutter/material.dart';

import '../widget/custom_book_details_app_bar.dart';
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
              const BookActionButton()
            ],
          ),
        ),
      )
    );
  }
}

class BookActionButton extends StatelessWidget {
  const BookActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                text: '19.99 &',
                backgroundColor: Colors.white,
                  textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
              ),),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              backgroundColor: Colors.orange,
              textColor: Colors.white,
              fontSize: 16.0,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
            ),),
        ],
      ),
    );
  }
}
