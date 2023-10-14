import 'package:flutter/material.dart';

import 'new_book_widget.dart';


class DetailsBookListView extends StatelessWidget {
  const DetailsBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height *0.14,
      child: ListView.builder(
        itemCount: 16,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4.0),
          child:  CustomNewBookWidget(),
        ),),
    );
  }
}
