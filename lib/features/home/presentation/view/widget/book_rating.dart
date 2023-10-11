import 'package:bookly_app/core/utils/styls.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,color: Colors.yellow,),
        SizedBox(width: 5.0,),
        Text('4.0',style: Styles.textStyle16,),
        SizedBox(width: 6.0,),
        Text('(256)',style: Styles.textStyle16.copyWith(color: Colors.grey),)

      ],
    );
  }
}
