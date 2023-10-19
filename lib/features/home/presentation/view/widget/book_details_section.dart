import 'package:flutter/material.dart';
import '../../../../../core/utils/styls.dart';
import 'book_action_button.dart';
import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';
import 'new_book_widget.dart';


class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:width*0.15),
          child:  CustomNewBookWidget(urlImage: ''),
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
      ],
    );
  }
}
