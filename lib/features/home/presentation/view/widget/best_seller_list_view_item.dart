import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/utils/styls.dart';
import 'book_rating.dart';


class BestSellerListViewItem extends StatelessWidget {
   BestSellerListViewItem({Key? key, this.book,}) : super(key: key);
   BookEntity? book ;



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.0,
      child: InkWell(
        onTap:() =>  Navigator.pushNamed(context, Routes.bookDetailsView),
        child: Row(
          children: [
            AspectRatio(aspectRatio: 2.6/4,child: CachedNetworkImage(
              imageUrl: book?.image??'',
              fit: BoxFit.fill,
            ),),
            const SizedBox(width: 30.0,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.sizeOf(context).width*0.5,
                      child:  Text(book?.title??'No title',
                        maxLines: 2,

                        style: Styles.textStyle20,)),
                  const SizedBox(height: 4.0,),
                   Text(book?.authorName??'No name',style: Styles.textStyle14,),
                  const SizedBox(height: 4.0,),
                  Row(
                    children: [
                      Text('19.0 \$',style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(width: 4.0,),
                      const Spacer(),
                      BookRating(rating: book?.rating.toString(),)
                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
