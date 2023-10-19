import 'package:bookly_app/core/utils/styls.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
   BookRating({Key? key,
    this.mainAxisAlignments=MainAxisAlignment.start,
     this.rating
  }) : super(key: key);

    String? rating;
   MainAxisAlignment mainAxisAlignments;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignments,
      children: [
        Icon(Icons.star,color: Colors.yellow,),
        SizedBox(width: 5.0,),
        Text('$rating',style: Styles.textStyle16,),
        SizedBox(width: 6.0,),
        Text('(256)',style: Styles.textStyle16.copyWith(color: Colors.grey),)

      ],
    );
  }
}
