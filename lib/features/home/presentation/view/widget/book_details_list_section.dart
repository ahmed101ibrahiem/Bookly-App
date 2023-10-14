import 'package:flutter/material.dart';
import '../../../../../core/utils/styls.dart';
import 'details_book_list_view.dart';



class BookDetailListSection extends StatelessWidget {
  const BookDetailListSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text('You can also like',style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
          ),),
        ),
        const SizedBox( height: 16.0,),
        const DetailsBookListView(),
        const SizedBox( height: 40.0,),
      ],
    );
  }
}

