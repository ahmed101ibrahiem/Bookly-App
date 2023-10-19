import 'package:bookly_app/core/media_quary/media_quary_value.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'new_book_widget.dart';

class CustomBookList extends StatelessWidget {
   CustomBookList({Key? key,required this.books}) : super(key: key);

  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height *0.3,
      child: ListView.builder(
        itemCount: 16,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  CustomNewBookWidget(urlImage: books[index].image!),),
    );
  }
}