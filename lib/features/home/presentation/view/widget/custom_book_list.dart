import 'package:bookly_app/core/media_quary/media_quary_value.dart';
import 'package:flutter/material.dart';

import 'new_book_widget.dart';

class CustomBookList extends StatelessWidget {
  const CustomBookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height *0.3,
      child: ListView.builder(
        itemCount: 16,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomNewBookWidget(),),
    );
  }
}